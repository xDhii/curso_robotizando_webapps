*** Settings ***
Resource            base.robot
Suite Setup         Nova sessão
Suite Teardown      Encerra sessão

*** Test Cases ***
Select by text and validate by value
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list              Scott Lang
    ${result}=                      Get Selected List Value         class:avenger-list
    Should be equal                 ${result}                       7

Select by Value and validate by text
    Go To                           ${dropdown}
    Select From List By Value       id:dropdown                     6
    ${result}=                      Get selected list Label         id:dropdown
    Should be equal                 ${result}                       Loki
