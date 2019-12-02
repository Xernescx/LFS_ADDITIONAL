ENT.Type            = "anim"
DEFINE_BASECLASS( "lunasflightschool_basescript" )

ENT.PrintName = "ATTE"
ENT.Author = "Blu"
ENT.Information = ""
ENT.Category = "[LFS]"

ENT.Spawnable		= true
ENT.AdminSpawnable	= false

ENT.MDL = "models/blu/atte.mdl"
ENT.GibModels = {
	"models/blu/atte.mdl",
	"models/blu/atte_rear.mdl",
	"models/blu/atte_bigfoot.mdl",
	"models/blu/atte_bigleg.mdl",
	"models/blu/atte_smallleg_part1.mdl",
	"models/blu/atte_smallleg_part2.mdl",
	"models/blu/atte_smallleg_part3.mdl"
}

ENT.RotorPos = Vector(265,0,175)

ENT.MaxPrimaryAmmo = 1500

ENT.AITEAM = 2

ENT.Mass = 5000

ENT.SeatPos = Vector(218,0,148)
ENT.SeatAng = Angle(0,-90,0)

ENT.MaxHealth = 10000

ENT.RotorPos = Vector(70,0,140)

function ENT:AddDataTables()
	self:NetworkVar( "Entity",22, "RearEnt" )
	self:NetworkVar( "Float",22, "Move" )

	self:NetworkVar( "Bool",19, "IsMoving" )
	self:NetworkVar( "Bool",20, "IsCarried" )
end

sound.Add( {
	name = "LAATc_ATTE_FIRE",
	channel = CHAN_WEAPON,
	volume = 1.0,
	level = 125,
	pitch = {95, 105},
	sound = "lfs/laatc_atte/fire.mp3"
} )