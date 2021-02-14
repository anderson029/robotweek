***Settings***
Documentation   Ações da página de login

***Keywords***
Open Login Page
    Open Browser    http://parodify.qaninja.com.br/users/sign_in    chromium

Login With
    [Arguments]     ${email_arg}    ${pass_arg}

    Fill Text       css=input[name*=email]       ${email_arg}
    Fill Text       [id="user_password"]        ${pass_arg}
    click           input[value="Log in"]

Alert Should Be 
    [Arguments]    ${expect_arg}
    
    Get Text        css=.is-danger .message-body    ==      ${expect_arg}