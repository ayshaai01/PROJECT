from tkinter import *

app=Tk()
app.title("my first python gui app")
app.geometry("500x200+500+100")
app.geometry("500x200")
#app.state("zoomed")
app.config(bg="blue")
lblTitle=Label(app,text="ARITHMETIC OPERATION",fg="pink",font=(",40"))
lblTitle.grid()
lblTitle.grid(row=0,columnspan=6,padx=40,pady=40) 
lblTitle=Label(app,text="a")
lblTitle.grid()
lblTitle.grid(row=4,columnspan=6,padx=40,pady=40) 
lblTitle1=Label(app,text="b")
lblTitle1.grid()
lblTitle1.grid(row=9,columnspan=6,padx=40,pady=40)
lblTitle1=Label(app,text="RESULT",font=(",20"))
lblTitle1.grid()
lblTitle1.grid(row=11,columnspan=10,padx=40,pady=40)

def addition():
    a=int(inputbox1.get())
    b=int(inputbox2.get())
    c=a+b
    #print(c)
    labeloutput.config(text=c)
def subraction():
    a=int(inputbox1.get())
    b=int(inputbox2.get())
    c=a-b
    #print(c)
    labeloutput.config(text=c)
def multiplication():
    a=int(inputbox1.get())
    b=int(inputbox2.get())
    c=a*b
    #print(c)
    labeloutput.config(text=c)
def division():
    a=int(inputbox1.get())
    b=int(inputbox2.get())
    c=a/b
   # print(c)
    labeloutput.config(text=c)
def modlus():
    a=int(inputbox1.get())
    b=int(inputbox2.get())
    c=a%b
   # print(c)
    labeloutput.config(text=c)

   

inputbox1=Entry(app,width =30)
inputbox1.grid(row=4,column=12)
inputbox2=Entry(app,width =30)
inputbox2.grid(row=9,column=12)
clickme=Button(app,text="addition",command=addition,bg="red",fg="green",font=(",18 "))
clickme.grid(row=10,column=10,padx=40,pady=40)
clickme=Button(app,text="subraction",command=subraction,bg="red",fg="green",font=(",18 "))
clickme.grid(row=10,column=12,padx=40,pady=40)
clickme=Button(app,text="multiply",command=multiplication,bg="red",fg="green",font=(",18 "))
clickme.grid(row=10,column=14,padx=40,pady=40)
clickme=Button(app,text="divide",command=division,bg="red",fg="green",font=(",18 "))
clickme.grid(row=10,column=16,padx=40,pady=40,)
clickme=Button(app,text="modlus",command=modlus,bg="red",fg="green",font=(",18 "))
clickme.grid(row=10,column=18,padx=40,pady=40)
labeloutput=Label(app,text="",bg="yellow",width=40)
labeloutput.grid(row=11,columnspan=18)
app.mainloop()
