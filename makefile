
PAGES != find . | grep '\.md$$'

Q := @

TEMPLATE = templates/template.tmpl
PANDOC_OPTS = -f markdown -t html --template="${TEMPLATE}" --toc --toc-depth=4 -M menu -M content

all: public static ${PAGES:C/.md$/.xhtml/g:C/^/public\//}
clean: ${PAGES:C/$/-clean/g}
	$Qrm -rf public tmp

public:
	$Qmkdir -p public/meetings
	$Qmkdir -p public/various

tmp:
	$Qmkdir -p tmp/meetings
	$Qmkdir -p tmp/various

static:
	$Qcp index.js public/index.js
	$Qcp style.css public/style.css

.for page in ${PAGES}
public/${page:C/.md$/.xhtml/}: ${page} tmp/${page:C/.md$/.lang.xhtml/}
	@echo ' [PANDOC] $@'
	$Qpandoc ${PANDOC_OPTS} -M root:`templates/get-root.sh ${page}` `templates/number.sh ${page}` --template="templates/template`templates/get-lang.sh ${page}`.tmpl" ${page} -B tmp/${page:C/.md$/.lang.xhtml/} -o $@

tmp/${page:C/.md$/.lang.xhtml/}: tmp ${page}
	@echo ' [SCRIPT] $@'
	$Qtemplates/gen-lang.sh '${page}' > '$@'

${page:C/$/-clean/}:
	@echo ' [  RM  ] ${page:C/.md$/.lang.xhtml/}'
	$Qrm -f tmp/${page:C/.md$/.lang.xhtml/}
.endfor

tartines.7: rules.md
	$Qpandoc -T man -M section:7 rules.md -w man -o - | sed 's| (#[^)]*)||' > tartines.7
clean-tartines.7:
	@echo ' [  RM  ] ./tartines.7'
	$Qrm -f ./tartines.7

