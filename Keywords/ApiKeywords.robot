*** Settings ***
Library    AppiumLibrary
Library    Time
Library    RequestsLibrary
*** Variables ***
${base_URL}    https://maps.googleapis.com/
*** Keywords ***
APIkeyword
    create session  baseURL  ${base_URL}
    ${resource}    set variable    maps/api/place/nearbysearch/json
    ${data}    create dictionary   key=AIzaSyD8-jgPzkd0s0WFFK71i7RiS8ZKsv9Ei64  location=-33.8670522,151.1957362  radius=1500
    ${header}  create dictionary    Content-Type=application/json
    ${requestvalue}  get request  baseURL  ${resource}  params=${data}
    log    ${requestvalue}
    log to console    ${requestvalue.status_code}
    log   ${requestvalue.content}
    log   ${requestvalue['results'][0]['name']}