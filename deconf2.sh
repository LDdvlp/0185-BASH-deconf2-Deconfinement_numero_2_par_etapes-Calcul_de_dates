#!/bin/bash

##
# deconf2.sh
#
# Affiche le nombre de jours restants par rapport aux 4 dates des 4 étapes du déconfinement
# Source Informations : https://www.gouvernement.fr/les-quatre-etapes-de-la-strategie-de-reouverture
#
# Usage :
# deconf2

stage1Title="--- Étape 1 ---"
stage2Title="--- Étape 2 ---"
stage3Title="--- Étape 3 ---"
stage4Title="--- Étape 4 ---"

stage1Order1="1.1 Fin des attestations et des restrictions de déplacement."

stage2Order1="2.1 Couvre-feu repoussé à 21h."
stage2Order2="2.2 Réouverture des commerces, des terrasses, des musées, des salles de cinémas et des théâtres avec des jauges limitées."

stage3Order1="3.1 Couvre-feu à 23h."
stage3Order2="3.2 Réouverture des cafés et restaurants en intérieur."
stage3Order3="3.3 Réouverture des salles de sport."
stage3Order4="3.4 Assouplissement du télétravail, en concertation avec les partenaires sociaux au niveau des entreprises."

stage4Order1="4.1 Fin du couvre-feu"

# Lundi 03 Mai 2021
stage1Date='05/03/21'
stage1DateSec=`date +%s --date ${stage1Date}`
stage1DateLocal=`date '+%d %h %Y' --date ${stage1Date}`
stage1DateNumber=`date +%j --date ${stage1Date}`
# Mercredi 19 Mai 2021
stage2Date='05/19/21'
stage2DateSec=`date +%s --date ${stage2Date}`
stage2DateLocal=`date '+%d %h %Y' --date ${stage2Date}`
stage2DateNumber=`date +%j --date ${stage2Date}`
# Mercredi 09 Juin 2021
stage3Date='06/09/21'
stage3DateSec=`date +%s --date ${stage3Date}`
stage3DateLocal=`date '+%d %h %Y' --date ${stage3Date}`
stage3DateNumber=`date +%j --date ${stage3Date}`
# Mercredi 30 Juin 2021
stage4Date='06/30/21'
stage4DateSec=`date +%s --date ${stage4Date}`
stage4DateLocal=`date '+%d %h %Y' --date ${stage4Date}`
stage4DateNumber=`date +%j --date ${stage4Date}`
# Today
nowDate=`date +%s`

# Convert seconds to days
convSec2Day="/(24*60*60)"

# About Variables $var or ${var} :
# Wrapping the variable name between curly brackets is not required but is considered good practice and it would advise to use them whenever.

# Countdowns
diffStage1DateNowDate=(${stage1DateSec}-${nowDate})${convSec2Day}
diffStage2DateNowDate=(${stage2DateSec}-${nowDate})${convSec2Day}
diffStage3DateNowDate=(${stage3DateSec}-${nowDate})${convSec2Day}
diffStage4DateNowDate=(${stage4DateSec}-${nowDate})${convSec2Day}

# Display
clear

echo ""
echo ${stage1Title}" "${stage1DateLocal}" - #"${stage1DateNumber}" ---"
echo ""
echo "    Reste "$((${diffStage1DateNowDate}))" jours"
echo ""
echo "    "${stage1Order1}
echo ""

echo ""
echo ${stage2Title}" "${stage2DateLocal}" - #"${stage2DateNumber}" ---"
echo ""
echo "    Reste "$((${diffStage2DateNowDate}))" jours"
echo ""
echo "    "${stage2Order1}
echo "    "${stage2Order2}
echo ""

echo ""
echo ${stage3Title}" "${stage3DateLocal}" - #"${stage3DateNumber}" ---"
echo ""
echo "    Reste "$((${diffStage3DateNowDate}))" jours"
echo ""
echo "    "${stage3Order1}
echo "    "${stage3Order2}
echo "    "${stage3Order3}
echo "    "${stage3Order4}
echo ""

echo ""
echo ${stage4Title}" "${stage4DateLocal}" - #"${stage4DateNumber}" ---"
echo ""
echo "    Reste "$((${diffStage4DateNowDate}))" jours"
echo ""
echo "    "${stage4Order1}
echo ""
