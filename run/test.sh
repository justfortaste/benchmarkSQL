#!/bin/sh
#****************************************************************#
# ScriptName: test.sh
# Author: $SHTERM_REAL_USER@alibaba-inc.com
# Create Date: 2017-03-02 19:36
# Modify Author: $SHTERM_REAL_USER@alibaba-inc.com
# Modify Date: 2017-03-06 07:56
# Function: 
#***************************************************************#

test1()
{
	type=$1
	echo "test1: " $type
}

filedate=`date +%m%d`

run()
{
	type=$1
	log_file=${type}_${filedate}
	echo "----------------------------------- $type:$log_file ----------------------------------------"
	echo "init $type 100: " `date`
	sh runDatabaseDestroy.sh props.$type > $log_file
	sh runDatabaseBuild.sh props.$type >> $log_file
	echo "run $type 100: " `date`
	sh runBenchmark.sh     props.$type >> $log_file

	echo "init $type 1000: " `date`
	sh runDatabaseDestroy.sh props.${type}_1000 >> $log_file
	sh runDatabaseBuild.sh props.${type}_1000 >> $log_file
	echo "run $type 1000: " `date`
	sh runBenchmark.sh     props.${type}_1000 >> $log_file
}

run dameng

run mysql

run pg

