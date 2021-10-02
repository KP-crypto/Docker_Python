from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.options import Options
import time

chrome_options = Options()
chrome_options.add_argument("--headless")

driver = webdriver.Chrome(ChromeDriverManager().install(),chrome_options=chrome_options)
driver.get('https://google.com')
driver.maximize_window()
time.sleep(2)
driver.close()
print('Execution finshed')


