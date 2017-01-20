#!/bin/bash
#
# Convert GNU Gettext POT files to DocBook XML files.
#
# PO files will be downloaded from Weblate http://l10n.opensuse.org/
# Weblate will sync POT and PO files automatically.
#

for xml in xml/*.xml;
do
    tmp=${xml#xml/}
    name=${tmp%.xml}
    echo $name
    for po in $(find l10n -name "$name.po");
    do
        langdir=${po%$name.po}
        mkdir -p $langdir/xml
        po2xml $xml $po | xmllint --format - > $langdir/xml/$name.xml
    done
done
