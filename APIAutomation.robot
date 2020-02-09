*** Settings ***
Library    AppiumLibrary
Library    Time
Library    RequestsLibrary
Resource   Keywords/ApiKeywords.robot
*** Variables ***
${base_URL}    https://maps.googleapis.com/
*** Test Cases ***
run
     APIkeyword
