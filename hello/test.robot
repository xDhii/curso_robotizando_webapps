*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas-vindas
    ${result}=              Welcome     Adriano
    # Log to console        ${result}
    Should be equal         ${result}   Olá Adriano, bem vindo ao curso básico de Robot Framework!
