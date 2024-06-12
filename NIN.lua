local profile = {};

local Settings = {
	player = gData.GetPlayer(),
	Mode = 'Normal',
	DTModifier = 'OFF',	
	KogaSwap = 'Dusk Gloves',
	
	CurrentLevel = 0,
};

local sets = {
    Idle_Priority = {
		Main = 'Senjuinrikio',
		Sub = 'Fudo',
		Ammo = 'Happy Egg',
        Head = 'Arh. Jinpachi +1',
        Neck = 'Promise Badge',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Arhat\'s Gi +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Bomb Queen Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Gigant Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1',
        Feet = 'Dst. Leggings +1',
    },
	
	EvasionIdle_Priority = {
		Main = 'Senjuinrikio',
		Sub = 'Fudo',
		Ammo = 'Happy Egg',
        Head = 'Arh. Jinpachi +1',
        Neck = 'Promise Badge',
        Ear1 = 'Novia Earring',
        Ear2 = 'Ethereal Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Bomb Queen Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Gigant Mantle',
        Waist = 'Koga Sarashi',
        Legs = 'Dst. Subligar +1',
        Feet = 'Nin. Kyahan +1',
    },
	
	Resting_Priority = {

	},
		
	NormalTP_Priority = {
		Main = 'Senjuinrikio',
		Sub = 'Fudo',
		Ammo = 'Bomb Core',
        Head = 'Panther Mask', --2%
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Stealth Earring',
        Body = 'Ninja Chainmail',
        Hands = Settings.KogaSwap,
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Swift Belt', --4%
        Legs = 'Byakko\'s Haidate', --5%
        Feet = 'Fuma Sune-Ate', --3%
    },
	
	AccuracyTP_Priority = {
		Ammo = 'Tiphia Sting',
        Head = 'Shr.Znr.Kabuto',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Stealth Earring',
        Body = 'Haubergeon',
        Hands = 'Noritsune Kote',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Fuma Sune-Ate',
	},
	
	EvasionTP_Priority = {
		Main = 'Senjuinrikio',
		Sub = 'Fudo',
		Ammo = 'Bomb Core',
        Head = 'Panther Mask', --2%
        Neck = 'Peacock Amulet',
        Ear1 = 'Novia Earring',
        Ear2 = 'Ethereal Earring',
        Body = 'Kirin\'s Osode',
        Hands = Settings.KogaSwap,
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Koga Sarashi', --4%
        Legs = 'Byakko\'s Haidate', --5%
        Feet = 'Fuma Sune-Ate', --3%
    },
	
	StaffTP_Priority = {
		Main = 'Terra\'s Staff',
        Ammo = 'Phtm. Tathlum',
        Head = 'Arh. Jinpachi +1',
        Neck = 'Promise Badge',
        Ear1 = 'Novia Earring',
        Ear2 = 'Morion Earring',
        Body = 'Arhat\'s Gi +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Gigant Mantle',
        Waist = 'Koga Sarashi',
        Legs = 'Dst. Subligar +1',
        Feet = 'Dst. Leggings +1',
	},
	
	EnmityTP_Priority = {
		Main = 'Terra\'s Staff',
		Ammo = 'Phtm. Tathlum',
        Head = 'Arh. Jinpachi +1',
        Neck = 'Promise Badge',
        Ear1 = 'Novia Earring',
        Ear2 = 'Morion Earring',
        Body = 'Arhat\'s Gi +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Gigant Mantle',
        Waist = 'Koga Sarashi',
        Legs = 'Dst. Subligar +1',
        Feet = 'Dst. Leggings +1',
	},
	
	WS_Priority = {
		Ammo = 'Bomb Core',
        Head = 'Shr.Znr.Kabuto',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Haubergeon',
        Hands = 'Horomusha Kote',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Luisant Sollerets',
    },
	
	--!!!!!!!!!!NOTE: UPDATE gearFastCast IN HandleMidcast FUNCTION IF PRECAST SET CHANGES!!!!!!!!!!
	Precast_Priority = {
		Ear1 = 'Loquacious Earring', --0.02
	},

    Haste_Priority = {
        Head = 'Panther Mask', --2%
		Body = 'Arhat\'s Gi +1',
		Hands = Settings.KogaSwap,
        Ear1 = 'Novia Earring',
        Ear2 = 'Ethereal Earring',
        Waist = 'Koga Sarashi', --4%
        Legs = 'Byakko\'s Haidate', --5%
		Feet = 'Fuma Sune-Ate', --3%
	},
	
	Nuke_Priority = {
		Ammo = 'Phtm. Tathlum',
		Head = 'Yasha Jinpachi',
		Neck = 'Uggalepih Pendant', --gotta remember to spend down mp
		Body = 'Kirin\'s Osode',
		Hands = 'Koga Tekko',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Novio Earring',
		Ring1 = 'Snow Ring',
		Ring2 = 'Snow Ring',
        Waist = 'Koga Sarashi',
		Legs = 'Yasha Hakama',
		Feet = 'Nin. Kyahan +1',
	},
	
	Enmity_Priority = {
		BaseSet = 'PDT',
		Head = 'Arh. Jinpachi +1',
		Neck = 'Harmonia\'s Torque',
		Body = 'Arhat\'s Gi +1',
		Hands = 'Yasha Tekko +1',
		Ear1 = 'Eris\' Earring',
		Ear2 = 'Eris\' Earring',
		Ring1 = 'Mermaid Ring',
		Back = 'Toreador\'s Cape',
		Waist = 'Warwolf Belt',
		Legs = 'Yasha Hakama',
		Feet = 'Ysh. Sune-Ate +1',
	},
	
	Sneak = {
		Feet = 'Dream Boots +1',
    },
	
	Invisible = {
		Hands = 'Dream Mittens +1',
    },
	
	Movement = {
        Feet = 'Nin. Kyahan +1',
	},
	
    Regen_Priority = {
	
    },
	
    NinjutsuSkill = {
        Ear2 = 'Stealth Earring',
        Waist = 'Koga Sarashi',
    },
	
    PDT = {
        Head = 'Arh. Jinpachi +1',
        Body = 'Arhat\'s Gi +1',
        Hands = 'Dst. Mittens +1',
        Legs = 'Dst. Subligar +1',
        Feet = 'Dst. Leggings +1',
    },
	
    MDT = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Yasha Jinpachi',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Kirin\'s Osode',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Legs = 'Yasha Hakama',
        Feet = 'Nin. Kyahan +1',
    },
	
	--Fire Resist
	FR = {
	
	},
	
	--Ice Resist
	IR = {
	
	},
	
	--Thunder Resist
	TR = {
	
	},

	
};

local staves = {
	--Update with HQ as you get them.
    ['Fire'] = 'Vulcan\'s Staff',
    ['Earth'] = 'Terra\'s Staff',
    ['Water'] = 'Neptune\'s Staff',
    ['Wind'] = 'Auster\'s Staff',
    ['Ice'] = 'Aquilo\'s Staff',
    ['Thunder'] = 'Jupiter\'s Staff',
    ['Light'] = 'Apollo\'s Staff',
    ['Dark'] = 'Pluto\'s Staff'
}

local obis = {
	--Uncomment as you get them.
    --['Fire'] = 'Karin Obi',
    --['Earth'] = 'Dorin Obi',
    --['Water'] = 'Suirin Obi',
    --['Wind'] = 'Furin Obi',
    --['Ice'] = 'Hyorin Obi',
    --['Thunder'] = 'Rairin Obi',
    --['Light'] = 'Korin Obi',
    --['Dark'] = 'Anrin Obi'
}

profile.Sets = sets;

profile.OnLoad = function()
	gSettings.AllowAddSet = true
	
	local player = gData.GetPlayer();
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 5');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /nin /lac fwd');
end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /nin /lac fwd');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind F9');
end

profile.HandleCommand = function(args)
	
	--Mode Toggle; need to make macros that send
		--/nin mode Normal
		--/nin mode Accuracy
		--/nin mode Evasion
		--/nin mode Staff
		--/nin mode Enmity
	--for full functionality
		
	if (args[1] == 'Mode') then
		if (#args > 1) then
			Settings.Mode = args[2];
			gFunc.Echo(158, Settings.Mode + " Mode ACTIVATED")
		end
	end
	
	--DTModifier Toggle; need to make macros that send
		--/nin DTModifier PDT
		--/nin DTModifier MDT
		--/nin DTModifier FR (for Fire Resist)
		--/nin DTModifier IR (for Ice Resist)
		--/nin DTModifier TR (for Thunder Resist)
	--for full functionality.  Note that sets must be filled out to be useful.
		
	if (args[1] == 'DTModifier') then
		if (#args > 1) then
			if (Settings.DTModifier == args[2]) then
				Settings.DTModifier = 'OFF'
				gFunc.Echo(158, "DTModifier DEACTIVATED")
			else
				Settings.DTModifier = args[2];
				gFunc.Echo(158, Settings.DTModifier + " Modifier ACTIVATED")
			end
		end
	end
	
end

profile.UpdateSets = function()
	--These define slots in various sets where Koga Tekko might be the better choice depending on time of day; KogaSwap handling present in default and midcast
	sets.Haste_Priority.Hands = Settings.KogaSwap;
	sets.TP_Priority.Hands = Settings.KogaSwap;
	sets.EvasionTP_Priority.Hands = Settings.KogaSwap;
	
end

profile.HandleDefault = function()
	local player = gData.GetPlayer();
	local environment = gData.GetEnvironment();
	local moving = gData.GetPlayer().IsMoving;
	local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
    if (myLevel ~= Settings.CurrentLevel) then
        gFunc.EvaluateLevels(profile.Sets, myLevel);
        Settings.CurrentLevel = myLevel;
    end

	
	--Level Sync handler
	local myLevel = player.MainJobSync;
    if (myLevel ~= Settings.CurrentLevel) then
        gFunc.EvaluateLevels(sets, myLevel);
        Settings.CurrentLevel = myLevel;
    end	

	--Gear change setups
	--Engage Sets
    if player.Status == 'Engaged' then
		local tpset = (Settings.Mode .. 'TP');
		if (Settings.DTModifier ~= 'OFF') then
			gFunc.EquipSet(tpset);
			gFunc.EquipSet(Settings.DTModifier);
		else
			gFunc.EquipSet(tpset);
		end
	--Resting Sets
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
	--Regen Idle Sets
	elseif (player.HPP < 100) then
		if (Settings.Mode == 'Evasion') then
			gFunc.EquipSet(gFunc.Combine(sets.EvasionIdle,sets.Regen));
		elseif (Settings.Mode == 'Staff' or Settings.Mode == 'Enmity') then
			gFunc.EquipSet(gFunc.Combine(sets.Idle,sets.Regen));
			gFunc.Equip('Main', 'Terra\'s Staff');
			gFunc.Equip('Sub', '');
		else			
			gFunc.EquipSet(gFunc.Combine(sets.Idle,sets.Regen));
		end
	--Idle Sets
	else
		if (Settings.Mode == 'Evasion') then
			gFunc.EquipSet(sets.EvasionIdle);
		elseif (Settings.Mode == 'Staff' or Settings.Mode == 'Enmity') then
			gFunc.EquipSet(sets.Idle);
			gFunc.Equip('Main', 'Terra\'s Staff');
			gFunc.Equip('Sub', '');
		else
			gFunc.EquipSet(sets.Idle);
		end
    end
	
	--Moving Handling; note the time, nq is 18 to 8, hq 17 to 7
	if (player.IsMoving == true) and (environment.Time < 7.00 or environment.Time > 17.00) then
		gFunc.Equip('Feet', 'Nin. Kyahan +1');
	end
	
	--KogaSwap Handling; note the time, nq is 18 to 8, hq 17 to 7
	if (environment.Time < 6.00 or environment.Time > 18.00) then
		Settings.KogaSwap = 'Koga Tekko';
	else
		Settings.KogaSwap = 'Dusk Gloves';
	end
	
end

profile.HandleAbility = function()
	local ability = gData.GetAction();

	--Ability handling; no reason not to just slam enmity into the sets, maybe worth considering only doing this when mode = enmity?
    if (ability.Name == 'Provoke') then
        gFunc.EquipSet(sets.Enmity);
	elseif (ability.Name == 'Yonin') then
        gFunc.EquipSet(sets.Enmity);
	elseif (ability.Name == 'Souleater') then
		gFunc.EquipSet(sets.Enmity);
	elseif (ability.Name == 'Last Resort') then
		gFunc.EquipSet(sets.Enmity);
	elseif (ability.Name == 'Weapon Bash') then
		gFunc.EquipSet(sets.Enmity);
    end
	
end

profile.HandleItem = function()
    local item = gData.GetAction();

	--sneak/invis item handling; maybe this shit matters????????? who knows
	if string.match(item.Name, 'Silent Oil') then 
		gFunc.EquipSet(sets.Sneak);
	elseif string.match(item.Name, 'Prism Powder') then 
		gFunc.EquipSet(sets.Invisible);
	end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();
    
	--Fast cast handling; note we don't do fast cast gear if we're actively using DT modifiers
	if (Settings.DTModifier == 'OFF') then
		gFunc.EquipSet(sets.Precast);
	end	
	
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
	local target = gData.GetActionTarget();
    local me = gData.GetPlayer().Name
	local player = gData.GetPlayer();
	local environment = gData.GetEnvironment();
	local NinNukes = T{'Katon: Ichi', 'Katon: Ni', 'Hyoton: Ichi', 'Hyoton: Ni', 'Huton: Ichi', 'Huton: Ni', 'Doton: Ichi', 'Doton: Ni', 'Raiton: Ichi', 'Raiton: Ni', 'Suiton: Ichi', 'Suiton: Ni'}
	local EnmitySpells = T{'Kurayami: Ichi', 'Hojo: Ichi', 'Jubaku: Ichi', 'Dokumori: Ichi', 'Kurayami: Ni', 'Hojo: Ni', 'Stun', 'Sleep', 'Bind', 'Aspir', 'Dispel', 'Cure III', 'Curaga', 'Curaga II'}
	--Fast cast amount, expressed as a %, e.g. 0.1 = 10% fast cast.  Variable changes for /rdm vs. not /rdm filled below.
	local fastCastValue;
	--Constant handling time in seconds to leave before spell completion.  Note: Up to 400ms of wait from packet handling.
	local minimumBuffer = 0.60;
	
	--fastCastValue handling, so that we can set castDelay appropriately
	--!!!!!!!!!NOTE: UPDATE gearFastCast VALUE IF PRECAST SET CHANGES!!!!!!!!!!!
	local gearFastCast = 0.02
	if (player.SubJob == 'RDM') then
		if (Settings.DTModifier == true) then
			fastCastValue = 0.15;
		else
			fastCastValue = 0.15 + gearFastCast;
		end
	else
		if (Settings.DTModifier == true) then
			fastCastValue = 0.0;
		else
			fastCastValue = gearFastCast;
		end
	end
	
	--set castDelay Variable; important for figuring out interim equip set equipping duration
	local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;
	
	--Ninjutsu spell handling; note MidCastDelays, checks for defense modifiers other than pdt, koga tekko handling, and ele staff handling
    if spell.Skill == 'Ninjutsu' then
        --Nuke Handling
		if (NinNukes:contains(spell.Name)) then
			if (Settings.DTModifier ~= 'OFF') then
				gFunc.InterimEquipSet(Settings.DTModifier);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Nuke);
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Nuke);
			end
		--Utsu Handling
		elseif string.match(spell.Name, 'Utsusemi') then
			if (Settings.DTModifier ~= 'OFF') then
				gFunc.InterimEquipSet(Settings.DTModifier);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Haste);
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Haste);
			end
		--Monomi and Tonko Handling
		elseif string.match(spell.Name, 'Monomi: Ichi') and (target.Name == me) then
            gFunc.EquipSet(gFunc.Combine(sets.Haste, sets.Sneak));
		elseif string.match(spell.Name, 'Tonko') and (target.Name == me) then
            gFunc.EquipSet(gFunc.Combine(sets.Haste, sets.Invisible));
		--Enmity Ninjutsu Handling under staff wielding modes; note special handling for Hojo: Ni so it doesn't land
		elseif (EnmitySpells:contains(spell.Name)) and (Settings.Mode == 'Enmity' or Settings.Mode == 'Staff') then
			--Enmity Mode Handling of Enmity Ninjutsu; note it does not equip to main except for Hojo: Ni
			if (Settings.Mode == 'Enmity') then
				if (Settings.DTModifier ~= 'OFF') then
					gFunc.InterimEquipSet(Settings.DTModifier);
					gFunc.SetMidDelay(castDelay);
					gFunc.EquipSet(sets.Enmity);
					if string.match(spell.Name, 'Hojo: Ni') then
						gFunc.Equip('Main', 'Jupiter\'s Staff');
					end
				else
					gFunc.InterimEquipSet(sets.PDT);
					gFunc.SetMidDelay(castDelay);
					gFunc.EquipSet(sets.Enmity);
					if string.match(spell.Name, 'Hojo: Ni') then
						gFunc.Equip('Main', 'Jupiter\'s Staff');
					end
				end
			--Staff Mode Handling of Enmity Ninjutsu; note equips appropriate staves in pursuit of accurate debuffs
			elseif (Settings.Mode == 'Staff') then
				if (Settings.DTModifier ~= 'OFF') then
					gFunc.InterimEquipSet(Settings.DTModifier);
					gFunc.SetMidDelay(castDelay);
					gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.NinjutsuSkill));
					gFunc.Equip('main', staves[spell.Element]);
				else
					gFunc.InterimEquipSet(sets.PDT);
					gFunc.SetMidDelay(castDelay);
					gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.NinjutsuSkill));
					gFunc.Equip('main', staves[spell.Element]);
				end
			end
		--General Ninjutsu Handling; note that it equips staves if you have 0 tp no matter what
		else
			if (Settings.DTModifier ~= 'OFF') then
				gFunc.InterimEquipSet(Settings.DTModifier);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.NinjutsuSkill));
				if (Settings.Mode == 'Enmity' or Settings.Mode == 'Staff' or player.TP == 0) then
					gFunc.Equip('main', staves[spell.Element]);
				end
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.NinjutsuSkill));
				if (Settings.Mode == 'Enmity' or Settings.Mode == 'Staff' or player.TP == 0) then
					gFunc.Equip('main', staves[spell.Element]);
				end
			end
        end
	--Enhancing spell handling; note same as Ninjutsu
	elseif spell.Skill == 'Enhancing Magic' then
		if string.match(spell.Name, 'Sneak') then
		    gFunc.EquipSet(gFunc.Combine(sets.Haste, sets.Sneak));
		elseif string.match(spell.Name, 'Invisible') then
            gFunc.EquipSet(gFunc.Combine(sets.Haste, sets.Invisible));
		else 
			if (Settings.DTModifier ~= 'OFF') then
				gFunc.InterimEquipSet(Settings.DTModifier);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Haste);
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Haste);
			end
        end
	--Non-ninjutsu enmity spell handling; note MidCastDelays and checks for defense modifiers other than pdt, no Koga Tekko; also note Stun staff handling
	elseif (EnmitySpells:contains(spell.Name)) and (spell.Skill ~= 'Ninjutsu') then
		--Stun Handling; note attempt to land stun without compromising enmity gained
		if (string.match(spell.Name, 'Stun')) and (Settings.Mode == 'Enmity') then
			if (Settings.DTModifier ~= 'OFF') then
				gFunc.InterimEquipSet(Settings.DTModifier);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Enmity);
				gFunc.Equip('main', staves[spell.Element]);
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Enmity);
				gFunc.Equip('main', staves[spell.Element]);
			end
		--Other Non-stun Non-ninjutsu enmity spells while in enmity mode handling
		else
			if (Settings.DTModifier ~= 'OFF') then
				gFunc.InterimEquipSet(Settings.DTModifier);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Enmity);
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Enmity);
			end
		end
	--Misc spells handling; note same as Ninjutsu; note staff mode staff equipping
	else
		if (Settings.DTModifier ~= 'OFF') then
			gFunc.InterimEquipSet(Settings.DTModifier);
			gFunc.SetMidDelay(castDelay);
			gFunc.EquipSet(sets.Haste);
			if (Settings.Mode == 'Staff') then
				gFunc.Equip('main', staves[spell.Element]);
			end
		else
			gFunc.InterimEquipSet(sets.PDT);
			gFunc.SetMidDelay(castDelay);
			gFunc.EquipSet(sets.Haste);
			if (Settings.Mode == 'Staff') then
				gFunc.Equip('main', staves[spell.Element]);
			end
		end
    end
	
	--KogaSwap Handling in midcast
	if (environment.Time < 6.00 or environment.Time > 18.00) then
		Settings.KogaSwap = 'Koga Tekko';
	else
		Settings.KogaSwap = 'Dusk Gloves';
	end
end

profile.HandlePreshot = function() 

end

profile.HandleMidshot = function()

end

profile.HandleWeaponskill = function()
	local ws = gData.GetAction();
    
		gFunc.EquipSet(sets.WS)
	
end

return profile;