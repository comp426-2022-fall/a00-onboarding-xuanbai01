#!/bin/bash

VAR_UNAME="$(uname -a)"
VAR_NODE_VERSION="$(node -v)"
VAR_NODE_WHICH="$(which node)"
VAR_VIM_VERSION="$(vim --version | head -n 1)"
VAR_VIM_WHICH="$(which vim)"
VAR_CURL_VERSION="$(curl --version | head -n 1)"
VAR_CURL_WHICH="$(which curl)"
VAR_GIT_VERSION="$(git --version)"
VAR_GIT_WHICH="$(which git)"
VAR_DATETIME="$(date --iso-8601='seconds')"

printf "Install checked: ${VAR_DATETIME}\n\n" | tee install_check.log
printf "SYSTEM:\t${VAR_UNAME}\n" | tee -a install_check.log
printf "SHELL:\t[${SHELL}]\n" | tee -a install_check.log
printf "GIT:\t[${VAR_GIT_WHICH}] $VAR_GIT_VERSION\n" | tee -a install_check.log
printf "VIM:\t[${VAR_VIM_WHICH}] $VAR_VIM_VERSION\n" | tee -a install_check.log
printf "CURL:\t[${VAR_CURL_WHICH}] $VAR_CURL_VERSION\n" | tee -a install_check.log
printf "NODE:\t[${VAR_NODE_WHICH}] $VAR_NODE_VERSION\n" | tee -a install_check.log
