# https://hub.docker.com/r/amazon/aws-cli
FROM amazon/aws-cli:latest


RUN mdkir ~/.aws
ADD ~/.aws/config ~/.aws/config
ADD ~/.aws/credentials ~/.aws/credentials
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

