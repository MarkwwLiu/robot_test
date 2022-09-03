*** Settings ***
Library    BuiltIn
Library    Collections
Library    DateTime
# Library    ImapLibrary
Library    OperatingSystem
Library    Process
Library    RequestsLibrary
Library    SeleniumLibrary    30    10
Library    String
Library    ./lib/api_auth.py
Library    ./lib/api_internal.py
Library    ./lib/api_open.py
Library    ./lib/api_tool_script.py
Library    ./res/src/set_chrome.py

Resource    ./lib/header.robot
Resource    ./lib/index.robot
Resource    ./lib/login.robot

Variables    ./res/location/header.py
Variables    ./res/location/index.py
Variables    ./res/location/login.py
Variables    setting.py

