if CLIENT then
include( "el_config.lua" )

surface.CreateFont( "elfont", {
	font = "Code Saver",
	size = 16,
	antialias = true,
} )

function openLicensevendor()

	local el_main = vgui.Create( "DFrame" )
	el_main:SetSize( 400 , 150 )
	el_main:Center()
	el_main:SetDraggable( true )
	el_main:MakePopup()
	el_main:ShowCloseButton( false )
	el_main:SetTitle( "" )
	el_main.Paint = function( self , width , height )

	draw.RoundedBox( 0 , 0 , 0 , width , height , easylicense.backgroundcolor )
	draw.RoundedBox( 0 , 0 , 0 , width , 20 , easylicense.topbarcolor )

	draw.SimpleText( easylicense.buttondescription , "elfont" , 110 , 23 , easylicense.textcolor )
	draw.SimpleText( "$" .. easylicense.licenseprice , "elfont" , 180 , 36 , easylicense.textcolor )
	draw.SimpleText( easylicense.menuname , "elfont" , 6 , 3 , easylicense.textcolor )

	end

	local el_main_close = vgui.Create( "DButton" , el_main )
	el_main_close:SetSize( 30 , 15 )
	el_main_close:SetPos( 367 , 3 )
	el_main_close:SetText( "" )
	el_main_close.Paint = function( self , width , height )

	if el_main_close:IsHovered() then
	draw.RoundedBox( 0 , 0 , 0 , width , height , Color( 255 , 0 , 0 ) )
	else
	draw.RoundedBox( 0 , 0 , 0 , width , height , easylicense.buttoncolor )
	end

	draw.SimpleText( "X" , "elfont" , 11 , 0 , easylicense.textcolor )

	end
	el_main_close.DoClick = function()

	el_main:Close()

	end

	local el_buylicensebtn = vgui.Create( "DButton" , el_main )
	el_buylicensebtn:SetSize( 200 , 60 )
	el_buylicensebtn:SetPos( 100 , 53 )
	el_buylicensebtn:SetText( "" )
	el_buylicensebtn.Paint = function( self , width , height )

	draw.RoundedBox( 0 , 0 , 0 , width , height , easylicense.buttoncolor )

	if el_buylicensebtn:IsHovered() then
	draw.RoundedBox( 0 , 0 , 56 , width , 2 , easylicense.buttonhighlightcolor )
	draw.SimpleText( easylicense.buttontext , "elfont" , 70 , 20 , easylicense.buttonhighlightcolor )
	else
	draw.RoundedBox( 0 , 0 , 56 , width , 2 , easylicense.buttonaccentcolor )
	draw.SimpleText( easylicense.buttontext , "elfont" , 70 , 20 , easylicense.buttonaccentcolor )
	end

	end

	el_buylicensebtn.DoClick = function()

	net.Start( "purchaseLicense" )
	net.SendToServer()

	net.Receive( "buyAlert" , function()
		chat.AddText( easylicense.prefixcolor , easylicense.prefix , " " , easylicense.chatcolor , easylicense.boughtlicense )
	end )

	net.Receive( "alreadyHavealert" , function()
		chat.AddText( easylicense.prefixcolor , easylicense.prefix , " " , easylicense.chatcolor , easylicense.alreadyhaslicense )
	end )

	net.Receive( "cantAffordalert" , function()
		chat.AddText( easylicense.prefixcolor , easylicense.prefix , " " , easylicense.chatcolor , easylicense.cantafford )
	end )

	el_main:Close()


	end

end

end