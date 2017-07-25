rm -rf nodejs.zip
zip -r nodejs.zip .
aws s3 cp nodejs.zip s3://aws-hemande-logs/
aws deploy create-deployment --application-name NodejsApp --deployment-config-name CodeDeployDefault.OneAtATime --deployment-group-name PROD --description "My demo deployment" --s3-location bucket=aws-hemande-logs,bundleType=zip,key=nodejs.zip
