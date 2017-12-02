'code by xcanwin
'https://github.com/xcanwin/

dim dt,tm,ws,sp
dt=date()
tm=now()
set ws=createobject("wscript.shell")

ws.run "cmd /c date 2014.10.24",0
sp=lcase(ws.environment("system").item("path"))
if instr(sp,"jre")>0 or instr(sp,"java")>0 then
  ws.run "cmd /c java -jar BurpLoader.jar",0
else
  ws.run "cmd /c start BurpLoader.jar",0
end if

do while datediff("s", tm, now())<5
  wscript.sleep(500)
  if ws.appactivate("licensed to Larry_Lau") then
    ws.run "cmd /c date "&dt,0
    exit do
  elseif ws.appactivate("BurpLoader.jar") then
    ws.run "cmd /c date "&dt,0
    msgbox "There is no Java environment or failure to start the burp!"
    exit do
  end if
loop
