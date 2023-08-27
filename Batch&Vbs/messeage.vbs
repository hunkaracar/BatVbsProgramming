
dim msg,sapi
msg=InputBox("Ne söylemek istersin??")
set sapi = CreateObject("sapi.spvoice")
sapi.Speak msg
msgbox("Gorusuruz Sahip")