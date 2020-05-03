*** Settings ***
Resource            base.robot
Suite Setup         Nova sessão
Suite Teardown      Encerra sessão

*** Test Cases ***
Select by ID
    Go To                               ${url}/radios
    Select Radio Button                 movies      cap
    Radio Button Should Be Set To       movies      cap

Select by value
    Go To                               ${radio}
    Select Radio Button                 movies      black-panther
    Radio Button Should Be Set To       movies      black-panther
