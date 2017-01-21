# Source DocBook XML files
XMLFILES := $(wildcard xml/*.xml)
# troubleshooting.xml cause xml2pot segmentation fault, skip it for the moment
XMLFILES := $(filter-out xml/troubleshooting.xml,$(XMLFILES))

LANGDIRS := $(wildcard l10n/*)
LANGDIRS := $(filter-out l10n/templates,$(LANGDIRS))

# GNU Gettext templates (POT files)
POTFILES := $(patsubst xml/%.xml,l10n/templates/%.pot,$(XMLFILES))

# Translated GNU Gettext files (PO files)
POFILES := $(shell ls l10n/*/*.po)

# Translated DocBook XML files
L10NXMLFILES := $(patsubst %.po,%.xml,$(POFILES))


all : xml2pot po2xml

xml2pot : $(POTFILES)

po2xml : $(L10NXMLFILES)

l10n/templates/%.pot : xml/%.xml
	xml2pot $< > $@

$(foreach langdir,$(LANGDIRS),$(eval $(langdir)/%.xml : xml/%.xml $(langdir)/%.po; po2xml $$^ > $$@))

clean : clean_pot clean_l10nxml

# Remove POT files, generated from XML
clean_pot :
	rm -f l10n/templates/*.pot

# Remove translated XML in language folders, generated from PO files
clean_l10nxml :
	rm -f l10n/*/*.xml
