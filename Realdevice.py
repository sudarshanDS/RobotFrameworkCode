from appium import webdriver
des={
    "platformName": "Android",
    "deviceName": "Nexusdemo",
    "browserName": "Chrome"
    }

webdriver=webdriver.Remote("http://127.0.0.1:4723/wd/hub",des)

webdriver.current_url("www.google.com")