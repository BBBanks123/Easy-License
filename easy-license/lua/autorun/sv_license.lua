if SERVER then
include( "el_config.lua" )

	util.AddNetworkString( "purchaseLicense" )
	util.AddNetworkString( "buyAlert" )
	util.AddNetworkString( "alreadyHavealert" )
	util.AddNetworkString( "cantAffordalert" )

net.Receive( "purchaseLicense" , function( len , ply )
local hasLicense = ply:getDarkRPVar( "HasGunlicense" )
local getMoney = ply:getDarkRPVar( "money" )

	if !hasLicense and getMoney >= easylicense.licenseprice then
	ply:addMoney( -easylicense.licenseprice )
	ply:setDarkRPVar( "HasGunlicense" , true , ply )
	net.Start( "buyAlert" )
	net.Send( ply )
	elseif hasLicense then
	net.Start( "alreadyHavealert" )
	net.Send( ply )
	elseif getMoney < easylicense.licenseprice and !hasLicense then
	net.Start( "cantAffordalert" )
	net.Send( ply )
	end

end)

	resource.AddFile( "resource/fonts/CodeSaver-Regular.otf" )

	AddCSLuaFile( "autorun/cl_licensemenu.lua" )
else

	include( "autorun/cl_licensemenu.lua" )
	end