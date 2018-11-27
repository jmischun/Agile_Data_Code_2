#!/bin/bash

#
# scp Airflow install and setup script to ec2 instance
#
EC2_HOSTNAME=$(cat ./.ec2_hostname)
scp -i ~/.ssh/agile_data_science.pem -r ~/Documents/Agile_Data_Code_2/aws/airflow_install.sh ubuntu@$EC2_HOSTNAME:/home/ubuntu/
