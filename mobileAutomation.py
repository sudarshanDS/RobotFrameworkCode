from appium import webdriver
from appium.webdriver.common.touch_action import TouchAction
import time
des={
    "platformName": "Android",
    "deviceName": "Nexusdemo",
    "app": "C:\\Users\\amanpreet kaur\\workspace\\SeleniumPractice\\src\\ApiDemos-debug.apk"
    }

webdriver=webdriver.Remote("http://127.0.0.1:4723/wd/hub",des)
# webdriver.find_element_by_xpath("//android.widget.TextView[@text='Preference']").click()
# time.sleep(5)
# webdriver.find_element_by_xpath("//android.widget.TextView[@text='3. Preference dependencies']").click()
# webdriver.find_element_by_id("android:id/checkbox").click()
# webdriver.find_element_by_xpath("(//android.widget.RelativeLayout)[2]").click()
# webdriver.find_element_by_class_name("android.widget.EditText").send_keys("Hello")
# time.sleep(5)
# webdriver.find_element_by_id("android:id/button1").click()
webdriver.find_element_by_xpath("//android.widget.TextView[@text='Views']").click()
actions = TouchAction(webdriver)
actions.tap(webdriver.find_element_by_xpath("//android.widget.TextView[@text='Expandable Lists']")).perform()
actions.long_press().move_to().perform()



