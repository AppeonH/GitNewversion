$PBExportHeader$w_genapp_about.srw
$PBExportComments$Generated MDI About Box
forward
global type w_genapp_about from window
end type
type cb_ok from commandbutton within w_genapp_about
end type
type st_copyright from statictext within w_genapp_about
end type
end forward

global type w_genapp_about from window
string tag = "About"
integer x = 872
integer y = 427
integer width = 1168
integer height = 569
boolean titlebar = true
string title = "バージョン情報"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 79416533
boolean center = true
cb_ok cb_ok
st_copyright st_copyright
end type
global w_genapp_about w_genapp_about

on w_genapp_about.create
this.cb_ok=create cb_ok
this.st_copyright=create st_copyright
this.Control[]={this.cb_ok,&
this.st_copyright}
end on

on w_genapp_about.destroy
destroy(this.cb_ok)
destroy(this.st_copyright)
end on

type cb_ok from commandbutton within w_genapp_about
integer x = 408
integer y = 348
integer width = 336
integer height = 89
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "OK"
boolean default = true
end type

event clicked;//*-----------------------------------------------------------------*/
//*    clicked:  Close "About" window
//*-----------------------------------------------------------------*/
Close ( Parent )
end event

type st_copyright from statictext within w_genapp_about
integer x = 28
integer y = 21
integer width = 1096
integer height = 277
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 79416533
boolean enabled = false
string text = "<ここにテキストを入力>"
alignment alignment = center!
boolean focusrectangle = false
end type

