#!/bin/sh
#****************************************************************#
# ScriptName: test.sh
# Author: $SHTERM_REAL_USER@alibaba-inc.com
# Create Date: 2017-03-02 19:36
# Modify Author: $SHTERM_REAL_USER@alibaba-inc.com
# Modify Date: 2017-03-07 16:16
# Function: 
#***************************************************************#

echo "run mysql100: " `date`
sh runBenchmark.sh     props.mysql > mysql.log
echo "run mysql 1000: " `date`
sh runBenchmark.sh     props.mysql_1000 >> mysql.log
echo "end :" `date`


