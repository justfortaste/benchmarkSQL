#!/bin/sh
#****************************************************************#
# ScriptName: test.sh
# Author: $SHTERM_REAL_USER@alibaba-inc.com
# Create Date: 2017-03-02 19:36
# Modify Author: $SHTERM_REAL_USER@alibaba-inc.com
# Modify Date: 2017-03-06 10:03
# Function: 
#***************************************************************#

echo "run dameng 100: " `date`
sh runBenchmark.sh     props.dameng > dameng.log
echo "run dameng 1000: " `date`
sh runBenchmark.sh     props.dameng_1000 >> dameng.log
echo "end :" `date`


