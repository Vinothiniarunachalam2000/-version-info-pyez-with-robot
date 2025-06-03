*** Settings ***
Library    show.py

*** Variables ***
${HOST}    %{SRX_HOST}
${USER}    %{SRX_USER}
${PASSWORD}    %{SRX_PASS}
*** Test Cases ***
Version Display
    get_version    ${HOST}    ${USER}    ${PASSWORD}

