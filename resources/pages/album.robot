***Settings***
Documentation       Ações da página de albúm

***Keywords***
Play song
    [Arguments]     ${song_name}

    click       xpath=//h2[contains(text(),"${song_name}")]/../..//div[contains(@class, "play")]//a
     
Song Should Be playing
    [Arguments]     ${song_name}
    Get style   xpath=//h2[contains(text(), "${song_name}")]/../../..   color   equal   rgb(0, 209, 178)