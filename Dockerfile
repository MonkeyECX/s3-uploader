# https://hub.docker.com/r/amazon/aws-cli
FROM amazon/aws-cli:latest


RUN mdkir ~/.aws
ADD /home/ec2-user/.aws/config ~/.aws/config
ADD /home/ec2-user/.aws/credentials ~/.aws/credentials
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

