FROM alpine:latest

LABEL "maintainer"="L3D <l3d@c3woc.de>"
LABEL "repository"="https://github.com/roles-ansible/check-ansible-alpine-latest-action.git"
LABEL "homepage"="https://github.com/roles-ansible/check-ansible-alpine-latest-action"

LABEL "com.github.actions.name"="check-ansible-alpine-latest"
LABEL "com.github.actions.description"="Check ansible role or playbook with Alpine"
LABEL "com.github.actions.icon"="aperture"
LABEL "com.github.actions.color"="green"

RUN apk update && apk install \
    python3 \
    python3-pip \
    git

RUN pip3 install setuptools && pip3 install ansible

RUN ansible --version

ADD ansible-docker.sh /ansible-docker.sh
ENTRYPOINT ["/ansible-docker.sh"]
