#!/bin/bash
#
# Convert DocBook XML files to GNU Gettext POT files.
#
# POT files will be imported to Weblate http://l10n.opensuse.org/
# Weblate will sync POT and PO files automatically.
#

for xml in xml/*.xml;
do
    tmp=${xml#xml/}
    name=${tmp%.xml}
    echo $name
    xml2pot $xml > l10n/templates/$name.pot
done
