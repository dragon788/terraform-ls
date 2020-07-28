FROM debian

RUN apt update && \
    apt install curl unzip && \
    curl -L https://releases.hashicorp.com/terraform-ls/0.5.4/terraform-ls_0.5.4_linux_amd64.zip | unzip -d /usr/local/bin/ - && \
    which terraform-ls
    
ENTRYPOINT terraform-ls serve 73990
