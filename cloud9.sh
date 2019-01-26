# expose the port 3000 to be publicly accessible
security_group=$(ec2-metadata -s | cut -d " " -f 2)
aws ec2 authorize-security-group-ingress --group-name $security_group --protocol tcp --port 3000 --cidr 0.0.0.0/0
