*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com/

*** Keywords ***

ค้นหาด้วยตำค้น    
    [Arguments]    ${keyword}    ${Expected_result}
    เปิด Browser
    ใส่คำค้น    ${keyword} 
    ตรวจสอบ    ${Expected_result}
    ปิด Browser
เปิด Browser
    Open Browser     browser=headlesschrome    url=${URL}
ใส่คำค้น
    [Arguments]     ${keyword}    
    Input Text    id=twotabsearchtextbox     text=${keyword}
    Press Keys    None    RETURN

ตรวจสอบ
    [Arguments]     ${Expected_result}
    Wait Until Page Contains    ${Expected_result}

ปิด Browser
    Close Browser 