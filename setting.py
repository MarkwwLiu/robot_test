import imp
import os
from res.src.set_chrome import ChromeManager

bitopro_home_link = 'https://www.bitopro.com/ns/home'
browser_name = 'chrome'
get_chrome_path = os.getcwd() + '/res/src/chromedriver'

get_chrome_option = ChromeManager.getChromeOptions

get_settings_port = '8888'