*** Settings ***
# Import the keywords from a separate file for better reusability
Resource    ../configs/Keywords.robot
Resource    ../pages/skip.robot
Resource    ../pages/home.robot
Resource    ../pages/Fridge.robot

Library    AppiumLibrary

Test Setup    Open Taakd App
# Test Teardown    Close Application

*** Test Cases ***
Skip The Demo
    Quick Skip

Enter And Show Item
    Quick Skip
    Choose Fridge

Search For Fridge Using DDT
    Quick Skip
    Choose Fridge
    Enter Fridge
