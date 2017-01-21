# Source DocBook XML files
XMLFILES := $(wildcard xml/*.xml)
# troubleshooting.xml cause xml2pot segmentation fault, skip it for the moment
XMLFILES := $(filter-out xml/troubleshooting.xml, $(XMLFILES))

# GNU Gettext templates (POT files)
POTFILES := $(patsubst xml/%.xml,l10n/templates/%.pot,$(XMLFILES))

# Translated GNU Gettext files (PO files)
POFILES := $(wildcard l10n/af/*.po) \
	$(wildcard l10n/ar/*.po) \
	$(wildcard l10n/be/.po) \
	$(wildcard l10n/bg/*.po) \
	$(wildcard l10n/bn/*.po) \
	$(wildcard l10n/ca/*.po) \
	$(wildcard l10n/cs/*.po) \
	$(wildcard l10n/cy/*.po) \
	$(wildcard l10n/da/*.po) \
	$(wildcard l10n/de/*.po) \
	$(wildcard l10n/el/*.po) \
	$(wildcard l10n/en_GB/*.po) \
	$(wildcard l10n/es/*.po) \
	$(wildcard l10n/et/*.po) \
	$(wildcard l10n/fa/*.po) \
	$(wildcard l10n/fi/*.po) \
	$(wildcard l10n/fr/*.po) \
	$(wildcard l10n/gl/*.po) \
	$(wildcard l10n/gu/*.po) \
	$(wildcard l10n/hi/*.po) \
	$(wildcard l10n/hr/*.po) \
	$(wildcard l10n/hu/*.po) \
	$(wildcard l10n/id/*.po) \
	$(wildcard l10n/it/*.po) \
	$(wildcard l10n/ja/*.po) \
	$(wildcard l10n/ka/*.po) \
	$(wildcard l10n/km/*.po) \
	$(wildcard l10n/ko/*.po) \
	$(wildcard l10n/ku/*.po) \
	$(wildcard l10n/lt/*.po) \
	$(wildcard l10n/mr/*.po) \
	$(wildcard l10n/nb/*.po) \
	$(wildcard l10n/nl/*.po) \
	$(wildcard l10n/nn/*.po) \
	$(wildcard l10n/pa/*.po) \
	$(wildcard l10n/pl/*.po) \
	$(wildcard l10n/pt/*.po) \
	$(wildcard l10n/pt_BR/*.po) \
	$(wildcard l10n/ro/*.po) \
	$(wildcard l10n/ru/*.po) \
	$(wildcard l10n/sk/*.po) \
	$(wildcard l10n/sl/*.po) \
	$(wildcard l10n/sr/*.po) \
	$(wildcard l10n/sv/*.po) \
	$(wildcard l10n/ta/*.po) \
	$(wildcard l10n/th/*.po) \
	$(wildcard l10n/tr/*.po) \
	$(wildcard l10n/uk/*.po) \
	$(wildcard l10n/wa/*.po) \
	$(wildcard l10n/xh/*.po) \
	$(wildcard l10n/zh_CN/*.po) \
	$(wildcard l10n/zh_TW/*.po) \
	$(wildcard l10n/zu/*.po)

# Translated DocBook XML files
L10NXMLFILES := $(patsubst %.po,%.xml,$(POFILES))


all : xml2pot po2xml

xml2pot : $(POTFILES)

po2xml : $(L10NXMLFILES)

l10n/templates/%.pot : xml/%.xml
	xml2pot $< > $@

l10n/af/%.xml : xml/%.xml l10n/af/%.po
	po2xml $^ > $@
l10n/ar/%.xml : xml/%.xml l10n/ar/%.po
	po2xml $^ > $@
l10n/be/%.xml : xml/%.xml l10n/be/%.po
	po2xml $^ > $@
l10n/bg/%.xml : xml/%.xml l10n/bg/%.po
	po2xml $^ > $@
l10n/bn/%.xml : xml/%.xml l10n/bn/%.po
	po2xml $^ > $@
l10n/ca/%.xml : xml/%.xml l10n/ca/%.po
	po2xml $^ > $@
l10n/cs/%.xml : xml/%.xml l10n/cs/%.po
	po2xml $^ > $@
l10n/cy/%.xml : xml/%.xml l10n/cy/%.po
	po2xml $^ > $@
l10n/da/%.xml : xml/%.xml l10n/da/%.po
	po2xml $^ > $@
l10n/de/%.xml : xml/%.xml l10n/de/%.po
	po2xml $^ > $@
l10n/el/%.xml : xml/%.xml l10n/el/%.po
	po2xml $^ > $@
l10n/en_GB/%.xml : xml/%.xml l10n/en_GB/%.po
	po2xml $^ > $@
l10n/es/%.xml : xml/%.xml l10n/es/%.po
	po2xml $^ > $@
l10n/et/%.xml : xml/%.xml l10n/et/%.po
	po2xml $^ > $@
l10n/fa/%.xml : xml/%.xml l10n/fa/%.po
	po2xml $^ > $@
l10n/fi/%.xml : xml/%.xml l10n/fi/%.po
	po2xml $^ > $@
l10n/fr/%.xml : xml/%.xml l10n/fr/%.po
	po2xml $^ > $@
l10n/gl/%.xml : xml/%.xml l10n/gl/%.po
	po2xml $^ > $@
l10n/gu/%.xml : xml/%.xml l10n/gu/%.po
	po2xml $^ > $@
l10n/hi/%.xml : xml/%.xml l10n/hi/%.po
	po2xml $^ > $@
l10n/hr/%.xml : xml/%.xml l10n/hr/%.po
	po2xml $^ > $@
l10n/hu/%.xml : xml/%.xml l10n/hu/%.po
	po2xml $^ > $@
l10n/id/%.xml : xml/%.xml l10n/id/%.po
	po2xml $^ > $@
l10n/it/%.xml : xml/%.xml l10n/it/%.po
	po2xml $^ > $@
l10n/ja/%.xml : xml/%.xml l10n/ja/%.po
	po2xml $^ > $@
l10n/ka/%.xml : xml/%.xml l10n/ka/%.po
	po2xml $^ > $@
l10n/km/%.xml : xml/%.xml l10n/km/%.po
	po2xml $^ > $@
l10n/ko/%.xml : xml/%.xml l10n/ko/%.po
	po2xml $^ > $@
l10n/ku/%.xml : xml/%.xml l10n/ku/%.po
	po2xml $^ > $@
l10n/lt/%.xml : xml/%.xml l10n/lt/%.po
	po2xml $^ > $@
l10n/mr/%.xml : xml/%.xml l10n/mr/%.po
	po2xml $^ > $@
l10n/nb/%.xml : xml/%.xml l10n/nb/%.po
	po2xml $^ > $@
l10n/nl/%.xml : xml/%.xml l10n/nl/%.po
	po2xml $^ > $@
l10n/nn/%.xml : xml/%.xml l10n/nn/%.po
	po2xml $^ > $@
l10n/pa/%.xml : xml/%.xml l10n/pa/%.po
	po2xml $^ > $@
l10n/pl/%.xml : xml/%.xml l10n/pl/%.po
	po2xml $^ > $@
l10n/pt/%.xml : xml/%.xml l10n/pt/%.po
	po2xml $^ > $@
l10n/pt_BR/%.xml : xml/%.xml l10n/pt_BR/%.po
	po2xml $^ > $@
l10n/ro/%.xml : xml/%.xml l10n/ro/%.po
	po2xml $^ > $@
l10n/ru/%.xml : xml/%.xml l10n/ru/%.po
	po2xml $^ > $@
l10n/sk/%.xml : xml/%.xml l10n/sk/%.po
	po2xml $^ > $@
l10n/sl/%.xml : xml/%.xml l10n/sl/%.po
	po2xml $^ > $@
l10n/sr/%.xml : xml/%.xml l10n/sr/%.po
	po2xml $^ > $@
l10n/sv/%.xml : xml/%.xml l10n/sv/%.po
	po2xml $^ > $@
l10n/ta/%.xml : xml/%.xml l10n/ta/%.po
	po2xml $^ > $@
l10n/th/%.xml : xml/%.xml l10n/th/%.po
	po2xml $^ > $@
l10n/tr/%.xml : xml/%.xml l10n/tr/%.po
	po2xml $^ > $@
l10n/uk/%.xml : xml/%.xml l10n/uk/%.po
	po2xml $^ > $@
l10n/wa/%.xml : xml/%.xml l10n/wa/%.po
	po2xml $^ > $@
l10n/xh/%.xml : xml/%.xml l10n/xh/%.po
	po2xml $^ > $@
l10n/zh_CN/%.xml : xml/%.xml l10n/zh_CN/%.po
	po2xml $^ > $@
l10n/zh_TW/%.xml : xml/%.xml l10n/zh_TW/%.po
	po2xml $^ > $@
l10n/zu/%.xml : xml/%.xml l10n/zu/%.po
	po2xml $^ > $@

clean : clean_pot clean_l10nxml

# Remove POT files, generated from XML
clean_pot :
	rm -f l10n/templates/*.pot

# Remove translated XML in language folders, generated from PO files
clean_l10nxml :
	rm -f l10n/*/*.xml
