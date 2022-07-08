import os
def open_pag():
    url = input("URL de la página >> ")
    url = "https://www."+url
    os.system('xdg-open "'+url+'"')
