#!/bin/bash

tools=Tools
config=config

./execute.sh trigram $config/moses.ini
./execute.sh trigram_opt $config/moses_opt.ini

./execute.sh 4gram $config/moses4.ini

