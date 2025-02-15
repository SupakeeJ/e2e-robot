*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
ทดสอบค้นหาด้วยตำค้น Robot ต้องเจอ Robot
    เปิด Browser
    ใส่คำค้น
    ตรวจสอบ

*** Keywords ***
เปิด Browser
    Open Browser     browser=chrome    url=https://www.google.com
ใส่คำค้น
    Input Text    id=APjFqb     text=Robot
    Press Keys    None    RETURN

ตรวจสอบ
    Wait Until Page Contains    Robot