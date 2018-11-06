
PAGES != find . | grep '\.md$$'

Q := @

TEMPLATE = templates/template.tmpl
PANDOC_OPTS = -f markdown -t html --template="${TEMPLATE}" --toc --toc-depth=4 -M menu -M content

all: static ${PAGES:C/.md$/.xhtml/g:C/^/public\//}
clean: ${PAGES:C/$/-clean/g}
	$Qrm -rf public

public:
	$Qmkdir -p public/gbpl

static: public
	$Qcp index.js public/index.js
	$Qcp style.css public/style.css
	$Qcp gbpl/style.css public/gbpl/style.css
	$Qcp -r gbpl/font-awesome-4.7.0 public/gbpl/
	$Qcp -r fonts public

.for page in ${PAGES}
public/${page:C/.md$/.xhtml/}: ./build.zsh ${page} templates/template.tmpl
	@./build.zsh -o public ${page}

${page:C/$/-clean/}:
	$Qrm -f public/${page:C/.md$/.xhtml/}
.endfor

tartines.7: rules.md
	$Qpandoc -T man -M section:7 rules.md -w man -o - | sed 's| (#[^)]*)||' > tartines.7
clean-tartines.7:
	@echo ' [  RM  ] ./tartines.7'
	$Qrm -f ./tartines.7

