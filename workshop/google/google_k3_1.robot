*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
*** Test Cases ***
ทดสอบค้นหาด้วยตำค้นและตรวจสอบผลการค้นหา
    [Template]    ค้นหาด้วยตำค้น 
    Robot    Robot
    Macbook    Macbook
    Robot    Robot

*** Keywords ***

ค้นหาด้วยตำค้น    
    [Arguments]    ${keyword}    ${Expected_result}
    เปิด Browser
    ใส่คำค้น    ${keyword} 
    ตรวจสอบ    ${Expected_result}
    ปิด Browser
เปิด Browser
    Open Browser     browser=chrome    url=${URL}
ใส่คำค้น
    [Arguments]     ${keyword}    
    Input Text    id=APjFqb     text=${keyword}
    Press Keys    None    RETURN

ตรวจสอบ
    [Arguments]     ${Result}
    Wait Until Page Contains    ${Result}

ปิด Browser
    Close Browser 