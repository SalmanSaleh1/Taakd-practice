*** Settings ***
Resource    ../configs/Keywords.robot
Resource    ../pages/skip.robot
Resource    ../pages/home.robot

*** Variables ***
${Skip_Button}    xpath=//android.widget.TextView[@text="استمرار"]
${Enter_Button}   xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]
${Permission_Dialog}    xpath=//android.widget.LinearLayout[@resource-id="com.android.permissioncontroller:id/grant_dialog"]
${Permission_Allow_Button}    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${Home_page}     xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ImageView[1]
${Skip}      xpath=//android.widget.TextView[@text='تخطي']

*** Keywords ***
Handle Permissions
    ${dialog_visible}    Run Keyword And Return Status    Wait    ${Permission_Dialog}
    Run Keyword If    ${dialog_visible}    Wait and Click Element    ${Permission_Allow_Button}

Handle Skip And Enter
    Handle Permissions  # Check and handle the permission dialog first
    Sleep    2s  # Allow time for elements to load

    ${skip_visible}    Run Keyword And Return Status    Wait    ${Skip_Button}
    WHILE    ${skip_visible}
        Wait and Click Element    ${Skip_Button}
        Sleep    1s
        ${skip_visible}    Run Keyword And Return Status    Wait    ${Skip_Button}
    END

    ${enter_visible}   Run Keyword And Return Status    Wait    ${Enter_Button}
    Run Keyword If    ${enter_visible}    Wait and Click Element    ${Enter_Button}
    Run Keyword Unless    ${enter_visible}    Fail    "Skip and Enter buttons were not found. Check XPath or increase wait time."

Quick Skip
    Handle Permissions
    Sleep    1s
    Wait And Click Element    ${Skip}