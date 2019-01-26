ip=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
echo "URL"
echo "http://$ip:3000"
