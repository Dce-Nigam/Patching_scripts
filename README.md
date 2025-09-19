# Patching_scripts
This is created to automate Patching of servers
__________Manual Setup
1. A script is created to collect necessary information.
2. Then it's being uploaded to Github from the remote machine
3. Github Personal Access Token Has been stored in SSM Parameter store
4. SSM Run command used  "AWS-RunRemoteScript" document and Github as source to run the script (i.e Precheck_script & Postcheck_script) on the remote machine
5. Logs of the execution & Output of Script sent back to S3 (s3://etltargetbucket01/etlstorebucket/precheck/ & s3://etltargetbucket01/i-002abca29ddf7e77d/)
6. 
