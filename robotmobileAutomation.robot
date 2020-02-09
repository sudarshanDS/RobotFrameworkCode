*** Settings ***
Library    AppiumLibrary
Library    Time
*** Keywords ***
First keyword
    open application    http://127.0.0.1:4723/wd/hub     platformName=Android    deviceName=Nexusdemo    app=C:\\Users\\amanpreet kaur\\workspace\\SeleniumPractice\\src\\ApiDemos-debug.apk
    sleep    5S
    click element    //android.widget.TextView[@text='Preference']
    sleep    5S
    click element    //android.widget.TextView[@text='3. Preference dependencies']
    click element    android:id/checkbox
    open application    http://127.0.0.1:4723/wd/hub     platformName=Android    deviceName=Nexusdemo    browserName=Chrome
    sleep    5S
    go to url    https://www.facebook.com
    input text    //*[@id="m_login_email"]    87654
    sleep    5S
    click element    //*[@value="Log In"]
*** Test Cases ***
run
     First keyword
