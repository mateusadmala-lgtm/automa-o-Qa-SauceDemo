* Settings *
Library    Browser

* Variables *
${input_username}    xpath=//input[@id="user-name"]
${input_password}    id=password
${btn_login}    id=login-button

* Keywords *

Preencher campo de usuário
    [Arguments]    ${username}
    Fill Text    ${input_username}    ${username}

Preencher campo de senha
    [Arguments]    ${password}
    Fill Text    ${input_password}    ${password}

Clicar no botão de login
    Click    ${btn_login}