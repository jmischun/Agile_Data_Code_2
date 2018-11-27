#!/bin/bash

#
# Install and setup Airflow
#
SLUGIFY_USES_TEXT_UNIDECODE=yes pip install --user apache-airflow[hive]
mkdir /home/ubuntu/airflow
mkdir /home/ubuntu/airflow/dags
mkdir /home/ubuntu/airflow/logs
mkdir /home/ubuntu/airflow/plugins

sudo chown -R ubuntu /home/ubuntu/airflow
sudo chgrp -R ubuntu /home/ubuntu/airflow
export PATH=$PATH:/home/ubuntu/.local/bin/
echo 'export PATH=$PATH:/home/ubuntu/.local/bin/' | sudo tee -a /home/ubuntu/.bash_profile

airflow initdb
airflow webserver -D &
airflow scheduler -D &

sudo chown -R ubuntu /home/ubuntu/airflow
sudo chgrp -R ubuntu /home/ubuntu/airflow

echo "sudo chown -R ubuntu /home/ubuntu/airflow" | sudo tee -a /home/ubuntu/.bash_profile
echo "sudo chgrp -R ubuntu /home/ubuntu/airflow" | sudo tee -a /home/ubuntu/.bash_profile
