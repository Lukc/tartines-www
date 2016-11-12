
PAGES != find . | grep '\.md$$'

Q := @

PANDOC_OPTS = -f markdown -t html --toc --toc-depth=4 -M menu -M content

all: ${PAGES:C/.md$/.xhtml/g}
clean: ${PAGES:C/$/-clean/g} clean-tartines.7

.for page in ${PAGES}
${page:C/.md$/.xhtml/}: ${page} ${page:C/.md$/.lang.xhtml/}
	@echo ' [PANDOC] $@'
	$Qpandoc ${PANDOC_OPTS} -M root:`templates/get-root.sh ${page}` `templates/number.sh ${page}` --template="templates/template`templates/get-lang.sh ${page}`.xhtml" ${page} -B ${page:C/.md$/.lang.xhtml/} -o $@

${page:C/.md$/.lang.xhtml/}: ${page}
	@echo ' [SCRIPT] $@'
	$Qtemplates/gen-lang.sh '${page}' > '$@'

${page:C/$/-clean/}:
	@echo ' [  RM  ] ${page:C/.md$/.xhtml/}'
	$Qrm -f ${page:C/.md$/.xhtml/}
	@echo ' [  RM  ] ${page:C/.md$/.lang.xhtml/}'
	$Qrm -f ${page:C/.md$/.lang.xhtml/}
.endfor

tartines.7: rules.md
	pandoc -T man -M section:7 rules.md -w man -o - | sed 's| (#[^)]*)||' > tartines.7
clean-tartines.7:
	rm tartines.7

