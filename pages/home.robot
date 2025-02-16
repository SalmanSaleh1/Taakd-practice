*** Settings ***
Library    JSONLibrary
Resource    ../configs/Keywords.robot
Resource    ../pages/skip.robot
Resource    ../pages/home.robot

*** Variables ***
${Show_Item_Button}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup
${Fridge}    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ImageView
${Electronic_device}    xpath=//android.widget.TextView[@text="الأجهزة الكهربائية"]
${Video_Permission}    //android.widget.TextView[@resource-id="com.android.permissioncontroller:id/permission_message"]
${Accept_Permission}    //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_foreground_only_button"]



${X1}    367
${Y1}    1545
${X2}    713
${Y2}    1891

*** Keywords ***
Show items
    Wait and Click Element    ${Show_Item_Button}

Choose Fridge
    Show Items
    Sleep    3s
    Click Element    ${Fridge}
    Wait    ${Video_Permission}
    Wait And Click Element    ${Accept_Permission}
