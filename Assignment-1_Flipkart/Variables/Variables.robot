*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.flipkart.com/
${browser}  chrome
${Login popup cancellation}     xpath://button[@class='_2AkmmA _29YdH8']
${Electronics}  xpath://span[contains(text(),'Electronics')]
${honor}   xpath://li[@class='_1KCOnI _3ZgIXy']/a[@href='/search?p[]=facets.brand%255B%255D%3DHonor&sid=tyy%2F4io&otracker=CLP_filters&otracker=nmenu_sub_Electronics_0_Honor']
${scroll_Until}   xpath://div[@data-id='MOBFPTF5X576JV3B']
${add_to_cart}  xpath://button[@class='_2AkmmA _2Npkh4 _2MWPVK']
${My_Cart_Icon}     xpath://a[@href='/viewcart?otracker=Cart_Icon_Click']
${actual_Prod_Title_Location}   xpath://a[@class='_325-ji _3ROAwx']
${expected_Prod_Title}  Honor 9x Pro (Midnight Black, 256 GB)

