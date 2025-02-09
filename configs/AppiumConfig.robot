*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}       http://127.0.0.1:4723
${PLATFORM_NAME}       Android
${DEVICE_NAME}         Android Emulator
${AUTOMATION_NAME}     UiAutomator2
${APP_PACKAGE}         com.sa.gov.saso.android.qee
${APP_ACTIVITY}        com.sa.gov.saso.android.qee.MainActivity