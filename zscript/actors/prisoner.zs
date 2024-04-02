//===========================================================================
//
// Prisoner
//
//===========================================================================
class Prisoner : Actor
{
    Default
    {
        Health 150;
	    PainChance 180;
	    Speed 10;
	    Radius 30;
	    Height 56;
	    Mass 400;
	    Monster;
	    +FLOORCLIP;
	    +SHOOTABLE;
        +SOLID;
	    SeeSound "demon/sight";
	    AttackSound "demon/melee";
	    PainSound "demon/pain";
	    DeathSound "demon/death";
	    ActiveSound "demon/active";
	    Obituary "$OB_DEMONHIT";
	    Tag "$FN_DEMON";
	}
	States
	{
	Spawn:
		PRSN A 1 A_Look;
		loop;
	See:
		PRSN AABBAACC 4 Fast A_Chase;
		loop;
	Melee:
		PRSN ED 8 Fast A_FaceTarget;
		PRSN ED 8 Fast A_SARGAttack;
		goto See;
	Pain:
		PRSN H 2 Fast;
		PRSN H 2 Fast A_Pain;
		goto See;
	Death:
		PRSN F 1;
		PRSN G 4 A_Scream;
		PRSN H 4;
		PRSN I 4 A_NoBlocking;
		PRSN J 4;
		PRSN K 4;
		PRSN L 4;
		PRSN M -1;
		stop;
	Raise:
		PRSN LKJIHGF 5;
		goto See;
	}
}
