*** Settings ***
Resource            base.robot
Suite Setup         Nova sessão
Suite Teardown      Encerra sessão

*** Test Cases ***
Test checkbox with ID
    Go To                           ${url}/checkboxes
    Select Checkbox                 id:thor
    Checkbox should be selected     id:thor

Test checkbox with CSS Selector
    [tags]      css
    Go To                           ${url}
    Select Checkbox                 css:input[value='iron-man']
    Checkbox should be selected     css:input[value='iron-man']

Test checkbox with xpath
    [tags]      xpath
    Go To                           ${url}
    Select Checkbox                 xpath=//input[@value='iron-man']
    Checkbox should be selected     xpath=//input[@value='iron-man']
