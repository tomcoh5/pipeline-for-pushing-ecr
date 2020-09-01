#!/bin/bash
cd $HOME
awsdir=".aws"
if [ ! -d $awsdir ];then
	mkdir $awsdir
fi
configfile=".aws/config"
if [ ! -f $configfile ];then
	touch $configfile
else
	echo "" > $configfile
fi
chmod 666 $configfile
/bin/cat << EOM >$configfile
[default]
region = $region
output = json
EOM

crenfile=".aws/credentials"
if [ ! -f $crenfile ];then
	touch $crenfile
else
	echo "" > $crenfile
fi
chmod 666 $crenfile
/bin/cat << EOM>$crenfile
[default]
aws_access_key_id = $access_key_id
aws_secret_access_key = $secret_access_key
EOM

