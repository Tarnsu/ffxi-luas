local profile = {};

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
        Body = 'Scorpion Harness',
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
		
	TP_Priority = {
		Main = 'Senjuinrikio',
		Sub = 'Fudo',
		Ammo = 'Bomb Core',
        Head = 'Panther Mask', --2%
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Stealth Earring',
        Body = 'Haubergeon',
        Hands = 'Dusk Gloves', --3%
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Swift Belt', --4%
        Legs = 'Byakko\'s Haidate', --5%
        Feet = 'Fuma Sune-Ate', --3%
    },
	
	EvasionTP_Priority = {
		Main = 'Senjuinrikio',
		Sub = 'Fudo',
		Ammo = 'Bomb Core',
        Head = 'Panther Mask', --2%
        Neck = 'Peacock Amulet',
        Ear1 = 'Novia Earring',
        Ear2 = 'Ethereal Earring',
        Body = 'Scorpion Harness',
        Hands = 'Dusk Gloves', --3%
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
		Ear1 = 'Loquacious Earring', --0.03
	},

    Haste_Priority = {
        Head = 'Panther Mask', --2%
		Body = 'Arhat\'s Gi +1',
		Hands = 'Dusk Gloves', --3%
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

local Settings = {
	player = gData.GetPlayer(),
	NormalTPMode = true,
	EvasionMode = false,
	StaffMode = false,
	EnmityMode = false,
	DTModifier = false,
	PDTModifier = false,
	MDTModifier = false,
	FRModifier = false,
	IRModifier = false,
	TRModifier = false,
	
	CurrentLevel = 0,
};


profile.HandleCommand = function(args)

	--Old Mode Toggles, deprecated for individual toggles for macro purposes
    -- if (args[1] == 'NinjaMode') then
        -- if (Settings.NinjaMode == 0) then
            -- gFunc.Echo(158, "Staff Mode ACTIVATED")
            -- Settings.NinjaMode = 1
        -- elseif (Settings.NinjaMode == 1) then
            -- gFunc.Echo(158, "Evasion Mode ACTIVATED")
            -- Settings.NinjaMode = 2
		-- elseif (Settings.NinjaMode == 2) then
			-- gFunc.Echo(158, "Normal TP Mode ACTIVATED")
			-- Settings.NinjaMode = 0
        -- end
    -- end	
	
	--NormalTPMode Toggle
	if (args[1] == 'NormalTPMode') then
		gFunc.Echo(158, "Normal TP Mode ACTIVATED")
		Settings.NormalTPMode = true
		Settings.AccuracyTPMode = false
		Settings.EvasionMode = false
		Settings.StaffMode = false
		Settings.EnmityMode = false
	end
	
	--AccuracyTPMode Toggle
	if (args[1] == 'AccuracyTPMode') then
		gFunc.Echo(158, "Accuracy TP Mode ACTIVATED")
		Settings.NormalTPMode = false
		Settings.AccuracyTPMode = true
		Settings.EvasionMode = false
		Settings.StaffMode = false
		Settings.EnmityMode = false
	end
	
	--EvasionMode Toggle
	if (args[1] == 'EvasionMode') then
		gFunc.Echo(158, "Evasion Mode ACTIVATED")
		Settings.NormalTPMode = false
		Settings.AccuracyTPMode = false
		Settings.EvasionMode = true
		Settings.StaffMode = false
		Settings.EnmityMode = false
	end
	
	--StaffMode Toggle
	if (args[1] == 'StaffMode') then
		gFunc.Echo(158, "Staff Mode ACTIVATED")
		Settings.NormalTPMode = false
		Settings.AccuracyTPMode = false
		Settings.EvasionMode = false
		Settings.StaffMode = true
		Settings.EnmityMode = false
	end
	
	--EnmityMode Toggle
	if (args[1] == 'EnmityMode') then
		gFunc.Echo(158, "Enmity Mode ACTIVATED")
		Settings.NormalTPMode = false
		Settings.AccuracyTPMode = false
		Settings.EvasionMode = false
		Settings.StaffMode = false
		Settings.EnmityMode = true
	end
	
	--PDTModifier Toggle
	if (args[1] == 'PDTModifier') then
		if (Settings.PDTModifier == false) then
			gFunc.Echo(158, "PDT Modifier ACTIVATED")
			Settings.PDTModifier = true
			Settings.DTModifier = true
			Settings.MDTModifier = false
			Settings.FRModifier = false
			Settings.IRModifier = false
			Settings.TRModifier = false
		else
			gFunc.Echo(158, "PDT Modifier DEACTIVATED")
			Settings.PDTModifier = false
			Settings.DTModifier = false
		end
	end

	--MDTModifier Toggle
	if (args[1] == 'MDTModifier') then
		if (Settings.MDTModifier == false) then
			gFunc.Echo(158, "MDT Modifier ACTIVATED")
			Settings.MDTModifier = true
			Settings.DTModifier = true
			Settings.PDTModifier = false
			Settings.FRModifier = false
			Settings.IRModifier = false
			Settings.TRModifier = false
		else
			gFunc.Echo(158, "MDT Modifier DEACTIVATED")
			Settings.MDTModifier = false
			Settings.DTModifier = false
		end
	end
	
	--FRModifier Toggle
	if (args[1] == 'FRModifier') then
		if (Settings.FRModifier == false) then
			gFunc.Echo(158, "FR Modifier ACTIVATED")
			Settings.FRModifier = true
			Settings.DTModifier = true
			Settings.PDTModifier = false
			Settings.MDTModifier = false
			Settings.IRModifier = false
			Settings.TRModifier = false
		else
			gFunc.Echo(158, "FR Modifier DEACTIVATED")
			Settings.FRModifier = false
			Settings.DTModifier = false
		end
	end
	
	--IRModifier Toggle; Implement If/then checks when set acquired
	if (args[1] == 'IRModifier') then
		if (Settings.IRModifier == false) then
			gFunc.Echo(158, "IR Modifier ACTIVATED")
			Settings.IRModifier = true
			Settings.DTModifier = true
			Settings.PDTModifier = false
			Settings.MDTModifier = false
			Settings.FRModifier = false
			Settings.TRModifier = false
		else
			gFunc.Echo(158, "IR Modifier DEACTIVATED")
			Settings.IRModifier = false
			Settings.DTModifier = false
		end
	end
	
	--TRModifier Toggle; Implement If/then checks when set acquired
	if (args[1] == 'TRModifier') then
		if (Settings.TRModifier == false) then
			gFunc.Echo(158, "TR Modifier ACTIVATED")
			Settings.TRModifier = true
			Settings.DTModifier = true
			Settings.PDTModifier = false
			Settings.MDTModifier = false
			Settings.FRModifier = false
			Settings.IRModifier = false
		else
			gFunc.Echo(158, "TR Modifier DEACTIVATED")
			Settings.TRModifier = false
			Settings.DTModifier = false
		end
	end
	
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
        if (Settings.EvasionMode == true) then
			if (Settings.DTModifier == false) then
				if (environment.Time < 6.00 or environment.Time > 18.00) then
					gFunc.EquipSet(sets.EvasionTP);
					gFunc.Equip('Hands', 'Koga Tekko');
				else
					gFunc.EquipSet(sets.EvasionTP);
				end
			else
				if (Settings.PDTModifier == true) then
					gFunc.EquipSet(gFunc.Combine(sets.EvasionTP, sets.PDT));
				elseif (Settings.MDTModifier == true) then
					if (environment.Time < 6.00 or environment.Time > 18.00) then
						gFunc.EquipSet(gFunc.Combine(sets.EvasionTP, sets.MDT));
						gFunc.Equip('Hands', 'Koga Tekko');
					else
						gFunc.EquipSet(gFunc.Combine(sets.EvasionTP, sets.MDT));
					end
				--Place FR/IR/TR Resist toggles here, mind the koga tekko if sets include hands
				end
			end
		elseif (Settings.NormalTPMode == true) then
			if (Settings.DTModifier == false) then
				if (environment.Time < 6.00 or environment.Time > 18.00) then
					gFunc.EquipSet(sets.TP);
					gFunc.Equip('Hands', 'Koga Tekko');
				else
					gFunc.EquipSet(sets.TP);
				end
			else
				if (Settings.PDTModifier == true) then
					gFunc.EquipSet(gFunc.Combine(sets.TP, sets.PDT));
				elseif (Settings.MDTModifier == true) then
					if (environment.Time < 6.00 or environment.Time > 18.00) then
						gFunc.EquipSet(gFunc.Combine(sets.TP, sets.MDT));
						gFunc.Equip('Hands', 'Koga Tekko');
					else
						gFunc.EquipSet(gFunc.Combine(sets.TP, sets.MDT));
					end
				--Place FR/IR/TR Resist toggles here, mind the koga tekko if sets include hands
				end
			end
		elseif (Settings.AccuracyTPMode == true) then
			if (Settings.DTModifier == false) then
				gFunc.EquipSet(set.AccuracyTP);
			else
				if (Settings.PDTModifier == true) then
					gFunc.EquipSet(gFunc.Combine(sets.AccuracyTP, sets.PDT));
				elseif (Settings.MDTModifier == true) then
					gFunc.EquipSet(gFunc.Combine(sets.AccuracyTP, sets.MDT));
				--Place FR/IR/TR Resist toggles here, mind the koga tekko if sets include hands
				end
			end
		elseif (Settings.StaffMode == true) then
			if (Settings.DTModifier == false) then
				gFunc.EquipSet(sets.StaffTP);
			else
				if (Settings.PDTModifier == true) then
					gFunc.EquipSet(gFunc.Combine(sets.StaffTP, sets.PDT));
				elseif (Settings.MDTModifier == true) then
					if (environment.Time < 6.00 or environment.Time > 18.00) then
						gFunc.EquipSet(gFunc.Combine(sets.StaffTP, sets.MDT));
						gFunc.Equip('Hands', 'Koga Tekko');
					else
						gFunc.EquipSet(gFunc.Combine(sets.StaffTP, sets.MDT));
					end
				--Place FR/IR/TR Resist toggles here, mind the koga tekko if sets include hands
				end
			end
		elseif (Settings.EnmityMode == true) then
			if (Settings.DTModifier == false) then
				gFunc.EquipSet(sets.EnmityTP);
			else
				if (Settings.PDTModifier == true) then
					gFunc.EquipSet(gFunc.Combine(sets.EnmityTP, sets.PDT));
				elseif (Settings.MDTModifier == true) then
					if (environment.Time < 6.00 or environment.Time > 18.00) then
						gFunc.EquipSet(gFunc.Combine(sets.EnmityTP, sets.MDT));
						gFunc.Equip('Hands', 'Koga Tekko');
					else
						gFunc.EquipSet(gFunc.Combine(sets.EnmityTP, sets.MDT));
					end
				--Place FR/IR/TR Resist toggles here, mind the koga tekko if sets include hands
				end
			end
		else
		end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
	elseif (player.HPP < 100) then
		if (Settings.EvasionMode == true) then
			gFunc.EquipSet(gFunc.Combine(sets.EvasionIdle,sets.Regen));
		elseif (Settings.StaffMode == true or Settings.EnmityMode == true) then
			gFunc.EquipSet(gFunc.Combine(sets.Idle,sets.Regen));
			gFunc.Equip('Main', 'Terra\'s Staff');
		else			
			gFunc.EquipSet(gFunc.Combine(sets.Idle,sets.Regen));
		end
	else
		--here's the SHIT too look at
		if (Settings.EvasionMode == true) then
			gFunc.EquipSet(sets.EvasionIdle);
		elseif (Settings.StaffMode == true or Settings.EnmityMode == true) then
			gFunc.EquipSet(sets.Idle);
			gFunc.Equip('Main', 'Terra\'s Staff');
		else
			gFunc.EquipSet(sets.Idle);
		end
    end
	
	if (player.IsMoving == true) and (environment.Time < 7.00 or environment.Time > 17.00) then
		gFunc.Equip('Feet', 'Nin. Kyahan +1');
	end
	
end

profile.HandleAbility = function()
	local ability = gData.GetAction();

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
	-- elseif (ability.Name == 'Jump') then
        -- gFunc.EquipSet(sets.Jump);
	-- elseif (ability.Name == 'Spirit Link') then
        -- gFunc.EquipSet(sets.SpiritLink);
	-- elseif (ability.Name == 'High Jump') then
        -- gFunc.EquipSet(sets.HighJump);
	-- elseif (ability.Name == 'Steady Wing') then
        -- gFunc.EquipSet(sets.SteadyWing);
	-- elseif (ability.Name == 'Angon') then
        -- gFunc.EquipSet(sets.Angon);
    end
	
end

profile.HandleItem = function()
    local item = gData.GetAction();

	if string.match(item.Name, 'Silent Oil') then 
		gFunc.EquipSet(sets.Sneak);
	elseif string.match(item.Name, 'Prism Powder') then 
		gFunc.EquipSet(sets.Invisible);
	end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();
    
	if (Settings.DTModifier == false) then
		gFunc.EquipSet(sets.Precast);
	end	
	
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
	local target = gData.GetActionTarget();
    local me = gData.GetPlayer().Name
	local NinNukes = T{'Katon: Ichi', 'Katon: Ni', 'Hyoton: Ichi', 'Hyoton: Ni', 'Huton: Ichi', 'Huton: Ni', 'Doton: Ichi', 'Doton: Ni', 'Raiton: Ichi', 'Raiton: Ni', 'Suiton: Ichi', 'Suiton: Ni'}
	local EnmitySpells = T{'Kurayami: Ni', 'Hojo: Ni', 'Stun', 'Sleep', 'Bind', 'Aspir', 'Dispel', 'Cure III', 'Curaga', 'Curaga II'}
	--Fast cast amount, expressed as a %, e.g. 0.1 = 10% fast cast.  Variable changes for /rdm vs. not /rdm filled below.
	local fastCastValue;
	--Constant handling time in seconds to leave before spell completion.  Note: Up to 400ms of wait from packet handling.
	local minimumBuffer = 0.60;
	
	--fastCastValue handling
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
	
	--set castDelay Variable
	local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;
	
	--Ninjutsu spell handling; note MidCastDelays, checks for defense modifiers other than pdt, koga tekko handling, and ele staff handling
    if spell.Skill == 'Ninjutsu' then
        if (NinNukes:contains(spell.Name)) then
			if (Settings.MDTModifier == true) then
				gFunc.InterimEquipSet(sets.MDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Nuke);
			elseif (Settings.FRModifier == true) then
				gFunc.InterimEquipSet(sets.FR);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Nuke);
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Nuke);
			end
		elseif string.match(spell.Name, 'Monomi: Ichi') and (target.Name == me) then
            gFunc.EquipSet(sets.Sneak)
		elseif string.match(spell.Name, 'Tonko: Ichi') and (target.Name == me) then
            gFunc.EquipSet(sets.Invisible);
		elseif (EnmitySpells:contains(spell.Name)) then
			if (Settings.EnmityMode == true) then
				if (Settings.MDTModifier == true) then
					gFunc.InterimEquipSet(sets.MDT);
					gFunc.SetMidDelay(castDelay);
					gFunc.EquipSet(sets.Enmity);
					if string.match(spell.Name, 'Hojo: Ni') then
						gFunc.Equip('Main', 'Jupiter\'s Staff');
					end
				elseif (Settings.FRModifier == true) then
					gFunc.InterimEquipSet(sets.FR);
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
				--swaps to a staff if in staffmode OR if tp = 0 to cast hojo or kurayami ni
			elseif (Settings.StaffMode == true or player.TPP == 0) then
				if (Settings.MDTModifier == true) then
					gFunc.InterimEquipSet(sets.MDT);
					gFunc.SetMidDelay(castDelay);
					gFunc.EquipSet(gFunc.Combine(sets.Enmity,sets.NinjutsuSkill));
					gFunc.Equip('main', staves[spell.Element]);
				elseif (Settings.FRModifier == true) then
					gFunc.InterimEquipSet(sets.FR);
					gFunc.SetMidDelay(castDelay);
					gFunc.EquipSet(gFunc.Combine(sets.Enmity,sets.NinjutsuSkill));
					gFunc.Equip('main', staves[spell.Element]);
				else
					gFunc.InterimEquipSet(sets.PDT);
					gFunc.SetMidDelay(castDelay);
					gFunc.EquipSet(gFunc.Combine(sets.Enmity,sets.NinjutsuSkill));
					gFunc.Equip('main', staves[spell.Element]);
				end
			end
		else
			if (Settings.MDTModifier == true) then
				gFunc.InterimEquipSet(sets.MDT);
				gFunc.SetMidDelay(castDelay);
				if (environment.Time < 6.00 or environment.Time > 18.00) then
					gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.NinjutsuSkill));
					gFunc.Equip('Hands', 'Koga Tekko');
					if (Settings.StaffMode == true or Settings.EnmityMode == true) then
						gFunc.Equip('main', staves[spell.Element]);
					end
				else
					gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.NinjutsuSkill));
					if (Settings.StaffMode == true or Settings.EnmityMode == true) then
						gFunc.Equip('main', staves[spell.Element]);
					end
				end
			elseif (Settings.FRModifier == true) then
				gFunc.InterimEquipSet(sets.FR);
				gFunc.SetMidDelay(castDelay);
				if (environment.Time < 6.00 or environment.Time > 18.00) then
					gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.NinjutsuSkill));
					gFunc.Equip('Hands', 'Koga Tekko');
					if (Settings.StaffMode == true or Settings.EnmityMode == true) then
						gFunc.Equip('main', staves[spell.Element]);
					end
				else
					gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.NinjutsuSkill));
					if (Settings.StaffMode == true or Settings.EnmityMode == true) then
						gFunc.Equip('main', staves[spell.Element]);
					end
				end
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				if (environment.Time < 6.00 or environment.Time > 18.00) then
					gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.NinjutsuSkill));
					gFunc.Equip('Hands', 'Koga Tekko');
					if (Settings.StaffMode == true or Settings.EnmityMode == true) then
						gFunc.Equip('main', staves[spell.Element]);
					end
				else
					gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.NinjutsuSkill));
					if (Settings.StaffMode == true or Settings.EnmityMode == true) then
						gFunc.Equip('main', staves[spell.Element]);
					end
				end
			end
        end
	--Enhancing spell handling; note same as Ninjutsu
	elseif spell.Skill == 'Enhancing Magic' then
		if string.match(spell.Name, 'Sneak') and (target.Name == me) then
		    gFunc.EquipSet(sets.Sneak);
		elseif string.match(spell.Name, 'Invisible') and (target.Name == me) then
            gFunc.EquipSet(sets.Invisible);
		else 
			if (Settings.MDTModifier == true) then
				gFunc.InterimEquipSet(sets.MDT);
				gFunc.SetMidDelay(castDelay);
				if (environment.Time < 6.00 or environment.Time > 18.00) then
					gFunc.EquipSet(sets.Haste);
					gFunc.Equip('Hands', 'Koga Tekko');
				else
					gFunc.EquipSet(sets.Haste);
				end
			elseif (Settings.FRModifier == true) then
				gFunc.InterimEquipSet(sets.FR);
				gFunc.SetMidDelay(castDelay);
				if (environment.Time < 6.00 or environment.Time > 18.00) then
					gFunc.EquipSet(sets.Haste);
					gFunc.Equip('Hands', 'Koga Tekko');
				else
					gFunc.EquipSet(sets.Haste);
				end
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				if (environment.Time < 6.00 or environment.Time > 18.00) then
					gFunc.EquipSet(sets.Haste);
					gFunc.Equip('Hands', 'Koga Tekko');
				else
					gFunc.EquipSet(sets.Haste);
				end
			end
        end
	--Non-ninjutsu enmity spell handling; note MidCastDelays and checks for defense modifiers other than pdt, no Koga Tekko; also note Stun staff handling
	elseif (EnmitySpells:contains(spell.Name)) and (spell.Skill ~= 'Ninjutsu') then
		if (string.match(spell.Name, 'Stun')) and (Settings.StaffMode == true or Settings.EnmityMode == true) then
			if (Settings.MDTModifier == true) then
				gFunc.InterimEquipSet(sets.MDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Enmity);
				gFunc.Equip('main', staves[spell.Element]);
			elseif (Settings.FRModifier == true) then
				gFunc.InterimEquipSet(sets.FR);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Enmity);
				gFunc.Equip('main', staves[spell.Element]);
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Enmity);
				gFunc.Equip('main', staves[spell.Element]);
			end
		else
			if (Settings.MDTModifier == true) then
				gFunc.InterimEquipSet(sets.MDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Enmity);
			elseif (Settings.FRModifier == true) then
				gFunc.InterimEquipSet(sets.FR);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Enmity);
			else
				gFunc.InterimEquipSet(sets.PDT);
				gFunc.SetMidDelay(castDelay);
				gFunc.EquipSet(sets.Enmity);
			end
		end
	--Misc spells; note same as Ninjutsu
	else
		if (Settings.MDTModifier == true) then
			gFunc.InterimEquipSet(sets.MDT);
			gFunc.SetMidDelay(castDelay);
			if (environment.Time < 6.00 or environment.Time > 18.00) then
				gFunc.EquipSet(sets.Haste);
				gFunc.Equip('Hands', 'Koga Tekko');
			else
				gFunc.EquipSet(sets.Haste);
			end
		elseif (Settings.FRModifier == true) then
			gFunc.InterimEquipSet(sets.FR);
			gFunc.SetMidDelay(castDelay);
			if (environment.Time < 6.00 or environment.Time > 18.00) then
				gFunc.EquipSet(sets.Haste);
				gFunc.Equip('Hands', 'Koga Tekko');
			else
				gFunc.EquipSet(sets.Haste);
			end
		else
			gFunc.InterimEquipSet(sets.PDT);
			gFunc.SetMidDelay(castDelay);
			if (environment.Time < 6.00 or environment.Time > 18.00) then
				gFunc.EquipSet(sets.Haste);
				gFunc.Equip('Hands', 'Koga Tekko');
			else
				gFunc.EquipSet(sets.Haste);
			end
		end
    end
	
end

profile.HandlePreshot = function() 

end

profile.HandleMidshot = function()

end

profile.HandleWeaponskill = function()
	local ws = gData.GetAction();
    
    -- if (ws.Name == "Wheeling Thrust") then
		-- gFunc.EquipSet(sets.Wheeling)
	-- elseif (ws.Name == "Impulse Drive") then
		-- gFunc.EquipSet(sets.Impulse)
	-- else
		gFunc.EquipSet(sets.WS)
	-- end
	
end

return profile;