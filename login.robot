***Settings***
Documentation   Teste da página Login

Library   Browser

***Test Cases***
Login com sucesso
    #New Page    http://parodify.qaninja.com.br/users/sign_in     
    Open Browser    http://parodify.qaninja.com.br/users/sign_in    chromium
    #Get Text    [for="user_email"]    contains    Email
    Fill Text   [id="user_email"]   papito@parodify.com
    Fill Text   [id="user_password"]  pwd123
    click       input[value="Log in"]
    Wait For Elements State     a[href$="/sign_out"]    visible     10