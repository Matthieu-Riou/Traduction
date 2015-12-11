#!/bin/bash

tools=Tools
config=config

./execute.sh nc_3g $config/moses_nc_3g.ini
./execute.sh nc_3g_opt $config/moses_nc_3g_opt.ini

./execute.sh nc_4g $config/moses_nc_4g.ini

./execute.sh ep_3g $config/moses_ep_3g.ini
