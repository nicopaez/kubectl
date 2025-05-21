FROM alpine:3.21
RUN apk update  && apk add --no-cache curl grep
RUN curl -LO "https://dl.k8s.io/release/v1.32.5/bin/linux/amd64/kubectl"
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN mkdir -p ${HOME}/.kube