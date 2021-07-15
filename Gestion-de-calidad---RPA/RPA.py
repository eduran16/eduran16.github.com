from contextlib import nullcontext
import pyautogui 
import webbrowser
import time
#webbrowser.open("https://servicios.unapec.edu.do/canvasunapec/")

Mensaje = "No encontrado"
Usuario = open("Usuario.txt", 'r')
Contrasena = open("Contra.txt", 'r')

#https://pyautogui.readthedocs.io/en/latest/msgbox.html

def EncontrarSesion():
    location = None
    webbrowser.open("https://servicios.unapec.edu.do/canvasunapec/")
    time.sleep(3)
    pyautogui.moveTo(50,50)

    while(location == None):
        print(Mensaje)
        location = pyautogui.locateOnScreen("Estudiante.png")
        print(location)

    pyautogui.click(location)
    time.sleep(2)
    pyautogui.typewrite(Usuario.read(), 0.10)
    pyautogui.press("Enter")
    time.sleep(1.5)
    pyautogui.typewrite(Contrasena.read(), 0.10)
    pyautogui.press("Enter")
    time.sleep(1)
    pyautogui.press("Enter")
    EncontrarMateria()
    
#-----------------------------------------------------#
def EncontrarMateria():
    location = None
    time.sleep(3)
    pyautogui.moveTo(50,50,duration = 2, tween=pyautogui.easeInOutQuad)
    while(location == None):
        print(Mensaje)
        location = pyautogui.locateOnScreen("Foto.png", grayscale=True)

    pyautogui.click(location)
    EncontrarEnlace()

#------------------------------------------------------

def EncontrarEnlace():
    location = None
    time.sleep(2)
    pyautogui.moveTo(50,50)
    while(location == None):
        print(Mensaje)
        location = pyautogui.locateOnScreen("Foto 2.png", grayscale=True)

    pyautogui.click(location)
    DescargarArchivo()

#------------------------------------------------------------

def DescargarArchivo():
    location = None
    time.sleep(2)
    pyautogui.moveTo(50,50)
    while(location == None):
        print(Mensaje)
        location = pyautogui.locateOnScreen("Foto3.png", grayscale=True)

    pyautogui.click(location)

#--------------------------------------------------------------#

EncontrarSesion()
#EncontrarMateria()
