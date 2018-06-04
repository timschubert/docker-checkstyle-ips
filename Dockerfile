FROM java:8-jdk

WORKDIR /checkstyle

ADD tubs_checks.xml .
ADD checkstyle.sh

ENV CHECKSTYLE_VERSION=7.6.1

RUN curl -sLO https://sourceforge.net/projects/checkstyle/files/checkstyle/${CHECKSTYLE_VERSION}/checkstyle-${CHECKSTYLE_VERSION}-all.jar && mv checkstyle-${CHECKSTYLE_VERSION}-all.jar checkstyle.jar

# https://docs.gitlab.com/runner/executors/docker.html#the-entrypoint
ENTRYPOINT ["./checkstyle.sh"]
