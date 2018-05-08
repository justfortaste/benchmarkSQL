#!/bin/sh
#****************************************************************#
# ScriptName: test.sh
# Author: $SHTERM_REAL_USER@alibaba-inc.com
# Create Date: 2017-03-02 19:36
# Modify Author: $SHTERM_REAL_USER@alibaba-inc.com
# Modify Date: 2017-03-03 11:27
# Function: 
#***************************************************************#

#echo "init dameng 100: " `date`
#sh runDatabaseBuild.sh props.dameng > dameng_log100_init_20170303_0
echo "run dameng 100: " `date`
sh runBenchmark.sh     props.dameng > dameng_log100_result_20170303_0
echo "run dameng 1000: " `date`
sh runBenchmark.sh     props.dameng_1000 > dameng_log1000_result_20170303_0
echo "end :" `date`


