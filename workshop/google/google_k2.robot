*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
*** Test Cases ***
ทดสอบค้นหาด้วยตำค้น Robot ต้องเจอ Robot
    เปิด Browser
    ใส่คำค้น    Robot
    ตรวจสอบ    Robot
    ปิด Browser

*** Keywords ***
เปิด Browser
    Open Browser     browser=chrome    url=${URL}
ใส่คำค้น
    [Arguments]     ${keyword}
    Input Text    id=APjFqb     text=$[keyword]
    Press Keys    None    RETURN

ตรวจสอบ
    [Arguments]     ${Result}
    Wait Until Page Contains    ${Result}

ปิด Browser
    Close Browser 