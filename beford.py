tabs=4
codes=""
files=input("file to convert to tab ford?")
f1=open(files,"r")
codes=f1.read()
f1.close()
codess=codes.split("\n")
codes=""

for n in codess:
    n=n.replace("\r","")
    if n.find(" "*tabs)!=0:
        codes=codes + n+"\n"
    else:
        codes=codes + n[4:]+"\n"
f1=open(files+".out","w")
f1.write(codes)
f1.close()