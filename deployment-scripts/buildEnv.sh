#!bin/bash

# ! REQUIRED INPUTS
# SSH_KEY_NAME= 
EB_ENV_NAME='memery-backend'

my_var=$(aws elasticbeanstalk describe-environments | grep $EB_ENV_NAME)


if [ "$my_var" ]
then
  echo 'environment already exists skipping creation'
else 
  echo 'environment does not exist creating anew'
  echo hello

fi

function spinUpEbEnv {
  eb create $EB_ENV_NAME \
  --elb-type application \
  --enable-spot \
  --platform "ruby-2.6-(puma)" \
  --region us-east-1 \
  --sample
}