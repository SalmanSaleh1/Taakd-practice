*** Settings ***
Library    JSONLibrary
Resource    ../configs/Keywords.robot
Resource    ../pages/skip.robot
Resource    ../pages/home.robot

*** Variables ***
${Search_Of_Fridge_Filed}    xpath=//android.widget.EditText[@text="ادخل هنا رقم الموديل"]
${DATA_FILE}    C:/Users/SalmanAlkhalifah/PycharmProjects/Taakd/data_device.json

*** Keywords ***
Load Device Data
    ${json_data}    Load JSON From File    ${DATA_FILE}
    ${device_name}    Get Value From Json    ${json_data}    $.name_of_device
    ${module_number}    Get Value From Json    ${json_data}    $.number_of_module
    Set Suite Variable    ${device_name}
    Set Suite Variable    ${module_number}

Enter Fridge
    Choose Fridge
    Wait    ${Search_Of_Fridge_Filed}
    Load Device Data
    Wait And Input Text    ${Search_Of_Fridge_Filed}    ${module_number}
    Press Keycode    66  # Press "Enter" key