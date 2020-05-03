*** Settings ***
Resource            base.robot
Suite Setup         Nova sessão
Suite Teardown      Encerra sessão

*** Test Cases ***
Check value by row number
    Go To                       ${url}/tables
    Table Row Should Contain    id:actors   1    10.000.000
    Table Row Should Contain    id:actors   1    @robertdowneyjr

Find row number by text key and validate values
    Go To                       ${url}/tables
    ${target}=                  Get WebElement  xpath://tr[contains(., '@chadwickboseman')]
    Log                         ${target.text}
    Log to Console              ${target.text}
    Should Contain              ${target.text}  700.000
    Should Contain              ${target.text}  Pantera Negra
