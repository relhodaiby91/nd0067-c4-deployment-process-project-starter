cd www
eb init --region $AWS_DEFAULT_REGION $EB_APP
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE AWS_BUCKET=$AWS_BUCKET JWT_SECRET=$JWT_SECRET NODE_OPTIONS=$NODE_OPTIONS -e $EB_ENV 
eb deploy $EB_ENV
