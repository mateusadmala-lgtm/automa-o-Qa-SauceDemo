* Settings *
Documentation    Nesta pasta vamos configurar as keywords (ações/palavras chave) que serão utilizadas nos testes.

#Esta linha chamada Library importa as bibliotecas que irei utilizar no meu projeto
#Nesse caso, estou utilizando a biblioteca Browser, pois é focada em interações com navegador web
Library    Browser

#Esta linha chamada Resource me permite importar variáveis de outro arquivo
#Nesse caso, estou importando as variáveis do arquivo config.robot, que são referentes a url, navegador, timeout e headless
Resource    ../variables/config.robot

* Keywords *

Abrir Navegador e Ir até o site
#esta documentation é uma descrição do que essa keyword diz
    [Documentation]    Esta keyword abre o navegador e vai até a url do site

    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    # abre uma nova aba no navegador e vai ate o site/url que foi definido na variavel
    New Page    ${URL_BASE}
    #define o tempo na tela para o rob encntrar o elementoque tera interação
    Set Browser Timeout    ${TIMEOUT}

Fechar Navegador
    [Documentation]    Esta keyword fecha o navegador aberto durante o teste
    Close Browser