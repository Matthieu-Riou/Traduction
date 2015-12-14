#!/bin/bash

#Avant de lancer ce script, générer le modèle de langue pour le corpus ted avec le script Model/generateModel.sh

tools=Tools
config=config

./execute.sh nc_3g $config/moses_nc_3g.ini
./execute.sh nc_3g_opt $config/moses_nc_3g_opt.ini

./execute.sh nc_4g $config/moses_nc_4g.ini

./execute.sh ep_3g $config/moses_ep_3g.ini

./execute.sh ted_3g $config/moses_ted_3g.ini
