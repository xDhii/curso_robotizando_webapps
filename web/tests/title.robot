*** Settings ***
Resource            base.robot
Suite Setup         Nova sessão
Suite Teardown      Encerra sessão

*** Test Cases ***
Should check for the page title
    Go To               ${url}
    Title should be     Training Wheels Protocol
