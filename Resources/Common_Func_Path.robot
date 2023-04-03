*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}    eBay
&{url}    qa=http://qa.demo.com    uat=http://uat.demo.com    dev=http://dev.demo.com    eBay=https://www.ebay.com


*** Keywords ***

Start TestCase
    Open Browser  ${url.${env}}  chrome
    Maximize Browser Window

Finish TestCase
    Close Browser