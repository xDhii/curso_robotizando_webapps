*** Settings ***
Resource            base.robot
Suite Setup         Nova sessão
Suite Teardown      Encerra sessão

*** Test Cases ***
Successfully Login
    Go To                               ${url}/login
    Login With                          stark       jarvis!
    Should See Logged User              Tony Stark

Unsuccessful Login, wrong pass
    [tags]                              login_error
    Go To                               ${url}/login
    Login With                          stark       test!
    Should Contain Login Alert          Senha é invalida!

Unsuccessful Login, invalid user
    [tags]                              login_error
    Go To                               ${url}/login
    Login With                          test        test!
    Should Contain Login Alert          O usuário informado não está cadastrado!


*** Keywords ***
Login With
    [Arguments]             ${username}        ${password}
    Input Text              css:input[name='username']      ${username}
    Input Text              css:input[name='password']      ${password}
    Click Element           class:btn-login

Should Contain Login Alert
    [Arguments]             ${expected_message}
    ${message}=             Get WebElement                  id:flash
    Should Contain          ${message.text}                 ${expected_message}

Should See Logged User
    [Arguments]             ${full_name}
    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!
