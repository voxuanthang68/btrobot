*** Settings ***
Documentation   Viết test case trang login
Library         SeleniumLibrary


*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME}     Admin
${PASSWORD}     admin123
${USERNAME1}    minhtu
${PASSWORD1}    minhtu11111
*** Test Cases ***
Valib login
    # 1. Mở trình duyệt
    Mở trình duyệt
    # 2. Đăng nhập
    Đăng nhập     ${USERNAME}    ${PASSWORD}
    # 3. Kiểm tra đăng nhập thành công
    Kiểm tra đăng nhập thành công
    # 4. Đóng trình duyệt
    # Đóng trình duyệtcd
Invalid login
    # 1. Mở trình duyệt
    Mở trình duyệt
    # 2. Đăng nhập
    Đăng nhập     ${USERNAME}    ${PASSWORD}
    # 3. Kiểm tra đăng nhập thất bại
    Kiểm tra đăng nhập thất bại
    # 4. Đóng trình duyệt
    # Đóng trình duyệtcd
*** Keywords ***
Mở trình duyệt
    Open Browser    ${URL}    chrome
    Maximize Browser Window
Đăng nhập
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpath=//*[@id="login"]/button
Kiểm tra đăng nhập thành công
    Page Should Contain    welcome
# Đóng trình duyệt
#     Close All Browsers
Kiểm tra đăng nhập thất bại
    Page Should Contain    your username is invalid