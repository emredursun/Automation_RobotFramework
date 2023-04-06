*** Settings ***
Documentation       Basic Search Functionality

Resource            ../../Resources/Common_Func_Path.robot
Resource            ../../Resources/eBay_Keywords_Path.robot
Resource            ../../Resources/PageObjects/HeaderPage.robot
Resource            ../../Resources/PageObjects/LandingPage.robot
Resource            ../../Resources/PageObjects/ProductDetailsPage.robot
Resource            ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup          Common_Func_Path.Start TestCase
Test Teardown       Common_Func_Path.Finish TestCase


*** Test Cases ***
Verify basic search functionality
    [Documentation]    This test case verifies the basic search
    [Tags]    functional

    HeaderPage.Input Search Text and Click Search    mobile
    SearchResultsPage.Verify Search Results    mobile


#Verify advanced search functionality
#    [Documentation]    This test case verifies the advanced search
#    [Tags]    Functional
#
#    HeaderPage.Click on Advanced Search  Link
