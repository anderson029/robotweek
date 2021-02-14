***Settings***
Documentation   Ações da página logada

***Variables***
${LOGOUT_LINK}      a[href$="/sign_out"]

***Keywords***
Logout Link Should Be visible
    Wait For Elements State     ${LOGOUT_LINK}    visible     10

Do Logout
    Click       ${LOGOUT_LINK}

Go to Search Page 
    click   css=a[href$=new] 
    Wait For Elements State     xpath=//h2[contains(text(), "Buscar")]    visible     10 