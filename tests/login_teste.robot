* Settings *
Documentation    Pasta de testes referente à tela de login

Resource    ../resources/common.robot
Resource    ../resources/pages/login_page.robot
Resource    ../variables/config.robot

Test Setup    Abrir Navegador e Ir até o site
Test Teardown    Fechar Navegador

* Test Cases *
TC01 - Validar login com sucesso
    [Documentation]    Teste para validar se o login será efetuado com sucesso
    Preencher campo de usuário    ${USUARIO}
    Preencher campo de senha    ${SENHA}
    Clicar no botão de login