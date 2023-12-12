FROM ubuntu:latest

WORKDIR /

RUN apt-get update && apt-get install wget -y && \
  wget https://go.dev/dl/go1.15.3.linux-amd64.tar.gz && \
  tar -C /usr/local -xzf go1.15.3.linux-amd64.tar.gz && \
  rm /go1.15.3.linux-amd64.tar.gz && \
  echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc && \
  echo 'export PATH="$PATH:$(go env GOPATH)/bin"' >> ~/.bashrc

COPY . /graphql
EXPOSE 8080