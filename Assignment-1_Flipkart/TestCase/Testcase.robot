*** Settings ***
Library  SeleniumLibrary
Resource  ../Keywords/Keywords.robot
Resource  ../Variables/Variables.robot

*** Test Cases ***
Test_1:Test to add a product to cart
    Launch Browser
    Login popup cancellation
    Select Electronics
    Select Honor
    Scroll until Honor 9x Pro (Midnight Black, 256 GB) (6 GB RAM)
    Switch to product tab
    Add to cart

Test_2:Test to verify item added in cart is displayed in My Cart screen
    Switch to home page
    Click on Mycart Icon
    Cart page validation
    #Get browser id
    Quit




