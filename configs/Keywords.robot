*** Settings ***
# Import the Appium configuration file
Resource    ../configs/AppiumConfig.robot

*** Variables ***


*** Keywords ***
# Open the Swag Labs mobile application
Open Taakd App
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    automationName=${AUTOMATION_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}

Wait and Click Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10 seconds    Element wasn't visible
    Click Element    ${locator}

Wait and Input Text
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    10s    Element wasn't visible
    Input Text    ${locator}    ${text}

Wait and Verify Element
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    10s    Element wasn't visible
    Element Text Should Be    ${locator}    ${text}

Wait
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10s    Element wasn't visible
