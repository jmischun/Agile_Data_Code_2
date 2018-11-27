#!/bin/bash

#
# scp Airflow install and setup script to ec2 instance
#
EC2_HOSTNAME=$(cat ./.ec2_hostname)
scp -r ~/.ssh/ -r ~/Documents/Agile_Data_Code_2/ec2_airflow_scp.sh ubuntu@$EC2_HOSTNAME:/home/ubuntu/
