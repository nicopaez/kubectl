FROM alpine:3.7
RUN apk update  && apk add --no-cache curl grep
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.26.0/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN mkdir -p ${HOME}/.kube