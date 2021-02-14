***Settings***
Documentation   Teste da página Login

Resource        ../resources/base.robot 

#gancho para tirar screenshot após cada cenário
Test Teardown   Take Screenshot

***Test Cases***
Login com sucesso
    [tags]  smoke
    #New Page    http://parodify.qaninja.com.br/users/sign_in     
    Open Login Page 
    #Get Text    [for="user_email"]    contains    Email
    Login With      papito@parodify.com     pwd123
    Logout Link Should Be visible
       
Senha incorreta
   Open Login Page 
    Login With      papito@parodify.com     xpto123
    Alert Should Be      Opps! Dados de acesso incorretos!
    
E-mail inválido
    Open Login Page
    Login With      123@teste.com   abc123
    Alert Should Be      Opps! Dados de acesso incorretos!
   
    
E-mail não informado
    Open Login Page
    Login With      ${EMPTY}    pwd123
    Alert Should Be      Opps! Dados de acesso incorretos!
    
Senha não informada
    Open Login Page
    Login With      papito@parodify.com     ${EMPTY}
    Alert Should Be      Opps! Dados de acesso incorretos!