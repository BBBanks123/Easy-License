if SERVER then
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )
include( "el_config.lua" )

util.AddNetworkString( "openLicensemenu" )

function ENT:Initialize()
	self:SetModel( easylicense.npcmodel )
	self:SetHullType( HULL_HUMAN )
	self:SetHullSizeNormal( )
	self:SetNPCState( NPC_STATE_SCRIPT )
	self:SetSolid(  SOLID_BBOX )
	self:CapabilitiesAdd( CAP_ANIMATEDFACE , CAP_TURN_HEAD )
	self:SetUseType( SIMPLE_USE )
	self:DropToFloor()
	self:SetMaxYawSpeed( 90 )

	if self:GetPhysicsObject():IsValid() then
		self:GetPhysicsObject():Wake()
		end
	end

	function ENT:AcceptInput( name , activator , caller )
	if name == "Use" and caller:IsPlayer() then
		net.Start( "openLicensemenu" ) net.Send( caller )
	end

end

end