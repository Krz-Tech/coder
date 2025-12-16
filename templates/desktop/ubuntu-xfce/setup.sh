#!/bin/bash

NAME="docker-containers-ubuntu-xfce"

# Optional
DISPLAY_NAME="Docker Containers | xfce Desktop"
DESCRIPTION="Wraps enterprise-base with a xfce desktop environment."
ICON="/icon/ubuntu.svg"
TAGS="[docker, containers, desktop]"

#= = = = = = = = = =
# Scripts
#= = = = = = = = = =

PREFIX="Coder | ${NAME} >>"

PushTemplate () {
    echo "${PREFIX} Pushing template"
    coder templates push -d coder -y $NAME
}

UpdateTemplateMetadata () {
    echo "*" * 10
    echo "${PREFIX} Updating template metadata"
    coder templates edit --display-name "$DISPLAY_NAME" --description "$DESCRIPTION" --icon "$ICON" "$NAME" 
}

PushTemplate
UpdateTemplateMetadata