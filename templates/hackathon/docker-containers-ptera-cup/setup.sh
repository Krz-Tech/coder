#!/bin/bash

NAME="docker-containers-ptera-cup"

# Optional
DISPLAY_NAME="Docker Containers | プテラカップ"
DESCRIPTION="「ハックツハッカソン プテラカップ」用Docker Containersテンプレート"
ICON="/icon/github.svg"
TAGS="[docker, containers, hackathon]"

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