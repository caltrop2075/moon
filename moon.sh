#!/usr/bin/bash
#------------------------------------------------------------------------------#
#                            Programmed By Liz                                 #
#------------------------------------------------------------------------------#
# moon phase
# DST has caused issues with other time calcs but 1hr shouldn't matter here
# see: phone.sh
#
# full moon base
#-------------------------------------------------------------------------------
o=$[ 647892 + 0 ]     # increase offset to increase phase

md=29                      # day
mh=12                      # hour
mm=44                      # minute
ms=03                      # second 2.8
s=$[ md * 24 * 60 * 60 + mh * 60 * 60 + mm * 60 + ms ]   # total seconds
d=$(date +%s)              # current epoch seconds
# d=$(date --date="2022-01-17 23:50:00" +%s)             # full moon
p=$[ (d + o) % s ]         # moon phase
#-------------------------------------------------------------------------------
if (( p <  s / 16 ))       # print moon w/no newline
then
   echo -n "🌕️"
elif (( p < s * 3 / 16 ))
then
   echo -n "🌖️"
elif (( p < s * 5 / 16 ))
then
   echo -n "🌗️"
elif (( p < s * 7 / 16 ))
then
   echo -n "🌘️"
elif (( p < s * 9 / 16 ))
then
   echo -n "🌑️"
elif (( p < s * 11 / 16 ))
then
   echo -n "🌒️"
elif (( p < s * 13 / 16 ))
then
   echo -n "🌓️"
elif (( p < s * 15 / 16 ))
then
   echo -n "🌔️"
elif (( p <  s * 17 / 16  ))
then
   echo -n "🌕️"
fi
#-------------------------------------------------------------------------------
