kops create cluster --name=gehana26.fun \
--state=s3://gehana26.fun --zones=us-east-1a \
--node-count=3 --control-plane-count=1 --node-size=t3.medium --control-plane-size=t3.medium \
--control-plane-volume-size 10 --node-volume-size 10 \
--topology private --networking calico \
--ssh-public-key ~/.ssh/id_rsa.pub \
--dns-zone=gehana26.fun --dry-run --output yaml