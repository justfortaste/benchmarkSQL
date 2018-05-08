#!/bin/sh
#****************************************************************#
# ScriptName: test.sh
# Author: $SHTERM_REAL_USER@alibaba-inc.com
# Create Date: 2017-03-02 19:36
# Modify Author: $SHTERM_REAL_USER@alibaba-inc.com
# Modify Date: 2017-03-04 07:31
# Function: 
#***************************************************************#

#echo "init pg 100: " `date`
#time sh runDatabaseBuild.sh props.pg > pg_log100_init_20170303_1

#echo "run pg 100 10 minutes: " `date`
#sh runBenchmark.sh     props.pg_10m > pg_10m

echo "run pg 100: " `date`
sh runBenchmark.sh     props.pg > pg_log100_result_20170304_1

#echo "init pg 1000: " `date`
#time sh runDatabaseBuild.sh props.pg_1000 > pg_log1000_init_20170303_1

echo "run pg 1000: " `date`
sh runBenchmark.sh     props.pg_1000 > pg_log1000_result_20170304_1
echo "end :" `date`


