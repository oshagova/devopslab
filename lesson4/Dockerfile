FROM alpine:3.11

ARG ANSIBLE_VERSION

RUN apk --update add py3-pip libffi-dev musl-dev openssl-dev make gcc python3 python3-dev py3-cryptography bash\
 && pip3 install --upgrade pip cffi \
        ansible==${ANSIBLE_VERSION} \
 && rm -rf /var/cache/apk/*

#RUN mkdir -p /etc/ansible \
#    && echo 'localhost' > /etc/ansible/hosts

WORKDIR /home

ADD https://bitbucket.org/LLlnak/docker-training/raw/7742ac5b71c094c8232eff3e06cb9df0d7208fc7/grab_this.txt .

CMD ["ansible-playbook", "--version"]