*** Settings ***
Resource    .././init.robot

Test Setup    Common Begin Web Test 
Test Teardown   Common End Web Test

*** Test Cases ***

Smoke Test
    [Documentation]    ffff
    [Tags]      smoke
    # [Setup]    NONE   # 可過濾自動起瀏覽器
    ${STRING}    Set Variable    Ron Ron
    # [Teardown]    NONE  # 可過濾自動關閉瀏覽器

Chrome Test
    [Documentation]    ffsdf
    [Tags]      chrome
    [Setup]    NONE   # 可過濾自動起瀏覽器
    ${STRING}    Set Variable    Ron Ron
    Log    ${login_text}
    Log    ${header_text}
    Log    ${index_text}
    [Teardown]    NONE  # 可過濾自動關閉瀏覽器

*** Keywords ***

# Get Chorome options
#     ${option}    get_chrome_options
#     Log    ${option}

Common Begin Web Test
    [Tags]    Gary
    [Documentation]   Open BitoPro Home Page
    Open Browser    ${bitopro_home_link}    chrome    executable_path=${get_chrome_path}

Common End Web Test
    Close Browser
