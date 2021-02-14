***Settings***
Documentation   Testando o player de paródias

Resource    ../resources/base.robot

#gancho para tirar screenshot após cada cenário
Test Teardown   Take Screenshot

***Test Cases***
Reproduzir paródia Bug de manhã
    Open Login Page
    Login With                  papito@parodify.com     pwd123
    Logout Link Should Be visible
    Go to Search Page
    Go to Sertanejo Category
    Open Album From             Marcus e Debug
    Play song                   Bug de Manhã
    Song Should Be playing     Bug de Manhã          