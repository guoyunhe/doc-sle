# Source DocBook XML files
# troubleshooting.xml cause xml2pot segmentation fault, skip it for the moment
XMLFILES := $(filter-out xml/troubleshooting.xml, $(wildcard xml/*.xml))

# GNU Gettext templates (POT files)
POTFILES := $(patsubst xml/%.xml,l10n/templates/%.pot,$(XMLFILES))

# Valid GNU Gettext file name patterns, used to filter out old po files
PONAMES := $(patsubst xml/%.xml, %, $(XMLFILES))

# Language directories
LANGDIRS := $(filter-out l10n/templates, $(wildcard l10n/*))

# Translated GNU Gettext files (PO files)
POFILES := $(foreach DIR, $(LANGDIRS), $(filter $(foreach PO, $(PONAMES), $(DIR)/$(PO).po), $(wildcard $(DIR)/*.po)))

# Translated DocBook XML files
L10NXMLFILES := $(foreach DIR, $(LANGDIRS), $(patsubst $(DIR)/%.po,$(DIR)/xml/%.xml,$(POFILES)))


all : xml2pot po2xml

xml2pot : $(POTFILES)

po2xml : $(L10NXMLFILES)

l10n/templates/%.pot : xml/%.xml
	xml2pot $< > $@

l10n/af/xml/%.xml : xml/%.xml l10n/af/%.po
	mkdir -p l10n/af/xml ; \
	po2xml $^ > $@
l10n/ar/xml/%.xml : xml/%.xml l10n/ar/%.po
	mkdir -p l10n/ar/xml ; \
	po2xml $^ > $@
l10n/be/xml/%.xml : xml/%.xml l10n/be/%.po
	mkdir -p l10n/be/xml ; \
	po2xml $^ > $@
l10n/bg/xml/%.xml : xml/%.xml l10n/bg/%.po
	mkdir -p l10n/bg/xml ; \
	po2xml $^ > $@
l10n/bn/xml/%.xml : xml/%.xml l10n/bn/%.po
	mkdir -p l10n/bn/xml ; \
	po2xml $^ > $@
l10n/ca/xml/%.xml : xml/%.xml l10n/ca/%.po
	mkdir -p l10n/ca/xml ; \
	po2xml $^ > $@
l10n/cs/xml/%.xml : xml/%.xml l10n/cs/%.po
	mkdir -p l10n/cs/xml ; \
	po2xml $^ > $@
l10n/cy/xml/%.xml : xml/%.xml l10n/cy/%.po
	mkdir -p l10n/cy/xml ; \
	po2xml $^ > $@
l10n/da/xml/%.xml : xml/%.xml l10n/da/%.po
	mkdir -p l10n/da/xml ; \
	po2xml $^ > $@
l10n/de/xml/%.xml : xml/%.xml l10n/de/%.po
	mkdir -p l10n/de/xml ; \
	po2xml $^ > $@
l10n/el/xml/%.xml : xml/%.xml l10n/el/%.po
	mkdir -p l10n/el/xml ; \
	po2xml $^ > $@
l10n/en_GB/xml/%.xml : xml/%.xml l10n/en_GB/%.po
	mkdir -p l10n/en_GB/xml ; \
	po2xml $^ > $@
l10n/es/xml/%.xml : xml/%.xml l10n/es/%.po
	mkdir -p l10n/es/xml ; \
	po2xml $^ > $@
l10n/et/xml/%.xml : xml/%.xml l10n/et/%.po
	mkdir -p l10n/et/xml ; \
	po2xml $^ > $@
l10n/fa/xml/%.xml : xml/%.xml l10n/fa/%.po
	mkdir -p l10n/fa/xml ; \
	po2xml $^ > $@
l10n/fi/xml/%.xml : xml/%.xml l10n/fi/%.po
	mkdir -p l10n/fi/xml ; \
	po2xml $^ > $@
l10n/fr/xml/%.xml : xml/%.xml l10n/fr/%.po
	mkdir -p l10n/fr/xml ; \
	po2xml $^ > $@
l10n/gl/xml/%.xml : xml/%.xml l10n/gl/%.po
	mkdir -p l10n/gl/xml ; \
	po2xml $^ > $@
l10n/gu/xml/%.xml : xml/%.xml l10n/gu/%.po
	mkdir -p l10n/gu/xml ; \
	po2xml $^ > $@
l10n/hi/xml/%.xml : xml/%.xml l10n/hi/%.po
	mkdir -p l10n/hi/xml ; \
	po2xml $^ > $@
l10n/hr/xml/%.xml : xml/%.xml l10n/hr/%.po
	mkdir -p l10n/hr/xml ; \
	po2xml $^ > $@
l10n/hu/xml/%.xml : xml/%.xml l10n/hu/%.po
	mkdir -p l10n/hu/xml ; \
	po2xml $^ > $@
l10n/id/xml/%.xml : xml/%.xml l10n/id/%.po
	mkdir -p l10n/id/xml ; \
	po2xml $^ > $@
l10n/it/xml/%.xml : xml/%.xml l10n/it/%.po
	mkdir -p l10n/it/xml ; \
	po2xml $^ > $@
l10n/ja/xml/%.xml : xml/%.xml l10n/ja/%.po
	mkdir -p l10n/ja/xml ; \
	po2xml $^ > $@
l10n/ka/xml/%.xml : xml/%.xml l10n/ka/%.po
	mkdir -p l10n/ka/xml ; \
	po2xml $^ > $@
l10n/km/xml/%.xml : xml/%.xml l10n/km/%.po
	mkdir -p l10n/km/xml ; \
	po2xml $^ > $@
l10n/ko/xml/%.xml : xml/%.xml l10n/ko/%.po
	mkdir -p l10n/ko/xml ; \
	po2xml $^ > $@
l10n/ku/xml/%.xml : xml/%.xml l10n/ku/%.po
	mkdir -p l10n/ku/xml ; \
	po2xml $^ > $@
l10n/lt/xml/%.xml : xml/%.xml l10n/lt/%.po
	mkdir -p l10n/lt/xml ; \
	po2xml $^ > $@
l10n/mr/xml/%.xml : xml/%.xml l10n/mr/%.po
	mkdir -p l10n/mr/xml ; \
	po2xml $^ > $@
l10n/nb/xml/%.xml : xml/%.xml l10n/nb/%.po
	mkdir -p l10n/nb/xml ; \
	po2xml $^ > $@
l10n/nl/xml/%.xml : xml/%.xml l10n/nl/%.po
	mkdir -p l10n/nl/xml ; \
	po2xml $^ > $@
l10n/nn/xml/%.xml : xml/%.xml l10n/nn/%.po
	mkdir -p l10n/nn/xml ; \
	po2xml $^ > $@
l10n/pa/xml/%.xml : xml/%.xml l10n/pa/%.po
	mkdir -p l10n/pa/xml ; \
	po2xml $^ > $@
l10n/pl/xml/%.xml : xml/%.xml l10n/pl/%.po
	mkdir -p l10n/pl/xml ; \
	po2xml $^ > $@
l10n/pt/xml/%.xml : xml/%.xml l10n/pt/%.po
	mkdir -p l10n/pt/xml ; \
	po2xml $^ > $@
l10n/pt_BR/xml/%.xml : xml/%.xml l10n/pt_BR/%.po
	mkdir -p l10n/pt_BR/xml ; \
	po2xml $^ > $@
l10n/ro/xml/%.xml : xml/%.xml l10n/ro/%.po
	mkdir -p l10n/ro/xml ; \
	po2xml $^ > $@
l10n/ru/xml/%.xml : xml/%.xml l10n/ru/%.po
	mkdir -p l10n/ru/xml ; \
	po2xml $^ > $@
l10n/sk/xml/%.xml : xml/%.xml l10n/sk/%.po
	mkdir -p l10n/sk/xml ; \
	po2xml $^ > $@
l10n/sl/xml/%.xml : xml/%.xml l10n/sl/%.po
	mkdir -p l10n/sl/xml ; \
	po2xml $^ > $@
l10n/sr/xml/%.xml : xml/%.xml l10n/sr/%.po
	mkdir -p l10n/sr/xml ; \
	po2xml $^ > $@
l10n/sv/xml/%.xml : xml/%.xml l10n/sv/%.po
	mkdir -p l10n/sv/xml ; \
	po2xml $^ > $@
l10n/ta/xml/%.xml : xml/%.xml l10n/ta/%.po
	mkdir -p l10n/ta/xml ; \
	po2xml $^ > $@
l10n/th/xml/%.xml : xml/%.xml l10n/th/%.po
	mkdir -p l10n/th/xml ; \
	po2xml $^ > $@
l10n/tr/xml/%.xml : xml/%.xml l10n/tr/%.po
	mkdir -p l10n/tr/xml ; \
	po2xml $^ > $@
l10n/uk/xml/%.xml : xml/%.xml l10n/uk/%.po
	mkdir -p l10n/uk/xml ; \
	po2xml $^ > $@
l10n/wa/xml/%.xml : xml/%.xml l10n/wa/%.po
	mkdir -p l10n/wa/xml ; \
	po2xml $^ > $@
l10n/xh/xml/%.xml : xml/%.xml l10n/xh/%.po
	mkdir -p l10n/xh/xml ; \
	po2xml $^ > $@
l10n/zh_CN/xml/%.xml : xml/%.xml l10n/zh_CN/%.po
	mkdir -p l10n/zh_CN/xml ; \
	po2xml $^ > $@
l10n/zh_TW/xml/%.xml : xml/%.xml l10n/zh_TW/%.po
	mkdir -p l10n/zh_TW/xml ; \
	po2xml $^ > $@
l10n/zu/xml/%.xml : xml/%.xml l10n/zu/%.po
	mkdir -p l10n/zu/xml ; \
	po2xml $^ > $@

clean : clean_pot clean_l10nxml

# Remove POT files, generated from XML
clean_pot :
	rm -f l10n/templates/*.pot

# Remove translated XML in language folders, generated from PO files
clean_l10nxml :
	rm -f l10n/*/*.xml
