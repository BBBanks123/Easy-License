if CLIENT then
include( "autorun/cl_licensemenu.lua" )
include( "shared.lua" )

surface.CreateFont( "elfont_large", {
	font = "Code Saver",
	size = 35,
	antialias = true,
} )


function ENT:Draw()
	self:DrawModel()

	local pos = self:GetPos()
	local ang = self:GetAngles()

	ang:RotateAroundAxis( ang:Right() , 90 )
	ang:RotateAroundAxis( ang:Forward() , 180 )
	ang:RotateAroundAxis( ang:Up() , -90 )

	cam.Start3D2D( pos + ang:Right() * -81 + ang:Forward() * -14  , ang , 0.1 )

	draw.RoundedBox( 0 , 0 , 0 , 260 , 20 , easylicense.topbarcolor )
	draw.RoundedBox( 0 , 0 , 20 , 260 , 50 , easylicense.backgroundcolor )
	if LocalPlayer():GetEyeTrace().Entity:GetClass() == "license_vendor" then
	draw.SimpleText( "License Dealer" , "elfont_large" , 20 , 22 , Color( 255 , 0 , 0 ) )
	else
	draw.SimpleText( "License Dealer" , "elfont_large" , 20 , 22 , Color( 255 , 255 , 255 ) )
	end

	cam.End3D2D()

end

net.Receive( "openLicensemenu" , function()

	openLicensevendor()

end )

end