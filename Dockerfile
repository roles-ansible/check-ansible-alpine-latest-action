FROM alpine:latest

LABEL "maintainer"="L3D <l3d@c3woc.de>"
LABEL "repository"="https://github.com/roles-ansible/check-ansible-alpine-latest-action.git"
LABEL "homepage"="https://github.com/roles-ansible/check-ansible-alpine-latest-action"

LABEL "com.github.actions.name"="check-ansible-alpine-latest"
LABEL "com.github.actions.description"="Check ansible role or playbook with Alpine"
LABEL "com.github.actions.icon"="aperture"
LABEL "com.github.actions.color"="green"


RUN apk add  --no-cache --update python3
RUN apk add  --no-cache --update ansible
RUN apk add  --no-cache --update git
RUN apk add  --no-cache --update bash

RUN ansible --version

ADD ansible-docker.sh /ansible-docker.sh
ENTRYPOINT ["/ansible-docker.sh"]
