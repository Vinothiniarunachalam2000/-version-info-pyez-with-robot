*** Settings ***
Library    show.py

*** Variables ***
${HOST}    %{SRX_HOST}     #cant show the details of setup as it is confidential
${USER}    %{SRX_USER}
${PASSWORD}    %{SRX_PASS}
*** Test Cases ***
Version Display
    get_version    ${HOST}    ${USER}    ${PASSWORD}

