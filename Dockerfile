# docker in docker plus aws, git for use in AWS CodeBuild
FROM docker:dind

# install git, aws-cli
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh && \
    apk -Uuv add groff less python py-pip && \
    pip install awscli && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*

VOLUME /var/lib/docker

ENTRYPOINT ["dockerd-entrypoint.sh"]
