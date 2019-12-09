FROM node:10.16.3-alpine

# To handle 'not get uid/gid'
RUN npm config set unsafe-perm true

RUN npm i -g serverless && \
  apk add --update git python python-dev py-pip curl && \
  pip install awscli --user --upgrade && \
  apk --purge -v del py-pip && \
  rm -rf /var/cache/apk/*

RUN mv /root/.local/bin/aws /usr/bin/

COPY entrypoint.sh .

ENTRYPOINT [ "./entrypoint.sh" ]
