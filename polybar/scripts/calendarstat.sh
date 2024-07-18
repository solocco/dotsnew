#! /usr/bin/env bash

###### Variables ######
DATEFTM="${DATEFTM:-+%a %d %b %Y}"
SHORTFMT="${SHORTFMT:-+%A, %d/%m/%Y}"

# print blocklet text
#echo $LABEL$(date "$DATEFTM")
echo $LABEL$(date "$SHORTFMT")
