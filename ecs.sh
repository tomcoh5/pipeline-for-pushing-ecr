#1/bin/bash
echo "please make sure you have ecs-cli-installed"
ecs-cli configure --cluster $cluster --default-launch-type EC2 --config-name $cluster --region $region
ecs-cli configure profile --access-key $access_key_id  --secret-key $secret_access_key  --profile-name $cluster-profile
ecs-cli up --force  --keypair $keypair  --capability-iam --size $numberofinstance --instance-type t2.medium --cluster-config $cluster  --ecs-profile $cluster-profile
