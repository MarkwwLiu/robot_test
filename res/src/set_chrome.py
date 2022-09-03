from selenium.webdriver.chrome.options import Options
# from selenium.webdriver.chrome import webdriver 

def sss_chrome():
    print("eee")


class ChromeManager:
    
    def __init__(self):
        pass
    
    def getChromeOptions(self):
        chrome_options = Options()
        chrome_options.add_argument('--headless')
        chrome_options.add_argument('--disable-dev-shm-usage')
        chrome_options.add_argument('--ignore-certificate-errors')
        chrome_options.add_argument('--no-sandbox')
        chrome_options.add_argument('--disable-gpu')
        chrome_options.add_experimental_option('_ignore_local_proxy', False)
        # chrome_options.add_argument("--proxy-server=127.0.0.1:8881")
        # chrome_options.add_experimental_option("useAutomationExtension", False)
        # chrome_options.add_experimental_option("excludeSwitches", ["enable-automation"])
        # chrome_options.add_argument("--proxy-server=localhost:8087")
        # chrome_options.add_argument('--remote-debugging-port=9222')

        return chrome_options
