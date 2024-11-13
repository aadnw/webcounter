*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When the counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Page Should Contain  nappia painettu 12 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa