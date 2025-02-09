*** Settings ***
# Import the Appium configuration file
Resource    ../configs/AppiumConfig.robot

*** Variables ***


*** Keywords ***
# Open the Swag Labs mobile application
Open Taakd App
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    automationName=${AUTOMATION_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    Sleep    1s

