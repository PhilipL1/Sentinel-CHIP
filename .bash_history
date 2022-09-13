terraform login
terraform init
export AWS_ACCESS_KEY_ID="AKIARSZOPWAHHRZWQDUM"
export AWS_SECRET_ACCESS_KEY="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"
terraform apply
cd /root/workspace/sentinel
sentinel apply -config=sentinel-mocks.hcl restrict-s3-buckets.sentinel
cd /root/workspace/sentinel/mocks/
cp mock-tfplan-v2.sentinel mock-tfplan-v2-pass.sentinel
cd /root/workspace/sentinel
sentinel test --verbose
TFC_TOKEN=$(jq -r '.credentials."app.terraform.io".token' ~/.terraform.d/credentials.tfrc.json)
curl --silent   --header "Authorization: Bearer $TFC_TOKEN"   --header "Content-Type: application/vnd.api+json"   --request POST   https://app.terraform.io/api/v2/policy-sets/polset-rqPzSBDfp162Xf7U/versions |jq
cd /root/workspace/sentinel
tar --create --gzip --file=policy-set.tar.gz sentinel.hcl restrict-s3-buckets.sentinel
curl   --header "Content-Type: application/octet-stream"   --request PUT   --data-binary @policy-set.tar.gz   https://archivist.terraform.io/v1/object/dmF1bHQ6djI6YkZYV2RxZlVZTUNZWktadER3cTNSbjg0VlFxeEtnUERZVEdkRnJKTFhMRDZGSnQvaVdvUkYzS2NCcHRvTlVBd0ZNcmwyS1FYKzFBME1yTEJsdjgzY1dTNmxhc2xFQVhaNXJVOHEwbUJiUkJJSVU4TkVsQ3BLcFJVUVJMS2JockdhcGhvcDFUSHlpTERxV3U3ZEhNZDJMOTFmTldZZVZoK3JOaUdkK1EyOHJBTnE2L0pmQzlyQ2srQm1QQnFjVklsRDNNay81YkZBMEVlVVpZa1VKVUlrcSt2TUJ0VjF4YUs0bjVmN0tMWkgxV2FIcFlqZGNGRStuQ3RPQzArbDdDenNTd0w5bWZoTE4vWlZGVnFuRG1sUktXTg
cd /root/workspace/tf-config
terraform apply
git init
git remote add origin https://github.com/PhilipL1/Sentinel-CHIP.git
cd ..
ls
pwd
cd ..
git remote add origin https://github.com/PhilipL1/Sentinel-CHIP.git
cd workspace/
cd ..
git init
git remote add origin https://github.com/PhilipL1/Sentinel-CHIP.gi
git add .
git remote add origin https://github.com/PhilipL1/Sentinel-CHIP.git
git add .
git remote remove origin
git init
git remote add origin https://github.com/PhilipL1/Sentinel-CHIP.git
git add .
git commit -m "sentinel project"
git config --global user.email "philiplartey1@hotmail.com"
git config --global user.name "Philip"
git commit -m "sentinel project"
git push -u -f origin main
git push -u -f origin master
git init 
