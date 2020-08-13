*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Launch Browser
    open browser    ${url}  ${browser}
    maximize browser window

Login popup cancellation
    wait until page contains    Login
    sleep   2
    click element   ${Login popup cancellation}

Select Electronics
    click element      ${Electronics}
    sleep   3

Select Honor
    click link  ${honor}

Scroll until Honor 9x Pro (Midnight Black, 256 GB) (6 GB RAM)
    wait until page contains    All Categories - Buy Products Online at Best Price in India - All Categories | Flipkart.com
    Scroll Element Into View    ${scroll_Until}
    sleep  2
    click element   ${scroll_Until}

Switch to product tab
    select window   title=Honor 9x Pro ( 256 GB Storage, 6 GB RAM ) Online at Best Price On Flipkart.com

Add to cart
    Click button    ${add_to_cart}
    sleep   4

Switch to home page
    select window   title=All Categories - Buy Products Online at Best Price in India - All Categories | Flipkart.com
    go to   ${url}

Click on Mycart Icon
    click link      ${My_Cart_Icon}
    sleep   3

Quit
    close browser

Cart page validation
    #${GetCart_title}  get title
    ${Actual_Title}=  get text    ${actual_Prod_Title_Location}
    Run Keyword If  '${Actual_Title}'=='${expected_Prod_Title}'  Log to console   Cart contains the added item
    ...  ELSE  Log to console  Cart do not have the added item

#Get browser id
    #@{browser_id}=  get browser ids
    #FOR  ${id}  IN  @{browser_id}
    #log to console  The window id is ${id}
    #END



