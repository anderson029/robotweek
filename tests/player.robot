***Settings***
Documentation   Testando o player de paródias

Resource    ../resources/base.robot

***Test Cases***
Reproduzir paródia Bug de manhã
    Open Login Page
    Login With  papito@parodify.com     pwd123
    Logout Link Should Be visible
    click   css=a[href$=new] 
    Wait For Elements State     xpath=//h2[contains(text(), "Buscar")]    visible     10 
    click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Sertanejo")]    visible     10
    click       xpath=//p[contains(text(), "Marcus e Debug")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")]    visible     10 
    click       xpath=//h2[contains(text(),"Bug de Manhã")]/../..//div[contains(@class, "play")]//a
    Get style   xpath=//h2[contains(text(), "Bug de Manhã")]/../../..   color   equal   rgb(0, 209, 178)    