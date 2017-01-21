# Source DocBook XML files
# troubleshooting.xml cause xml2pot segmentation fault, skip it for the moment
XMLFILES := $(filter-out xml/troubleshooting.xml, $(wildcard xml/*.xml))

# GNU Gettext templates (POT files)
POTFILES := $(patsubst xml/%.xml,l10n/templates/%.pot,$(XMLFILES))

# Valid GNU Gettext file name patterns, used to filter out old po files
PONAMES := $(patsubst xml/%.xml, %, $(XMLFILES))

# Language codes
LANG := af ar be bg bn ca cs cy da de el en_GB es et fa fi fr gl gu hi hr hu id it ja ka km ko \
        ku lt mr nb nl nn pa pl pt pt_BR ro ru sk sl sr sv ta th tr uk wa xh zh_CN zh_TW zu

# Language directories
LANGDIRS := $(filter-out l10n/templates, $(wildcard l10n/*))

# Translated GNU Gettext files (PO files)
POFILES := $(shell ls l10n/*/*.po)

# Translated DocBook XML files
L10NXMLFILES := $(foreach DIR, $(LANGDIRS), $(patsubst $(DIR)/%.po,$(DIR)/xml/%.xml,$(POFILES)))


all : xml2pot po2xml

xml2pot : $(POTFILES)

po2xml : $(L10NXMLFILES)

l10n/templates/%.pot : xml/%.xml
	xml2pot $< > $@

$(foreach lang,$(LANG),$(shell mkdir -p l10n/$(lang)/xml))
$(foreach langdir,$(LANGDIRS),$(eval $(langdir)/xml/%.xml : xml/%.xml $(langdir)/%.po; po2xml $$^ > $$@))

clean : clean_pot clean_l10nxml

# Remove POT files, generated from XML
clean_pot :
	rm -f l10n/templates/*.pot

# Remove translated XML in language folders, generated from PO files
clean_l10nxml :
	rm -f l10n/*/*.xml
