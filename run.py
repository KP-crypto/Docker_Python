from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
import time

driver = webdriver.Chrome(ChromeDriverManager().install())
driver.get('https://google.com')
driver.maximize_window()
time.sleep(2)
driver.close()
print('Execution finshed')


