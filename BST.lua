local profile = {
};
profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    local player = gData.GetPlayer();	
    AshitaCore:GetChatManager():QueueCommand(1, '/alias /bst /lac fwd');
	AshitaCore:GetChatManager():QueueCommand(1, '/macro Book 2');
	AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	gFunc.ApplyBaseSets(profile.Sets);
	
	if (player.SubJob == 'WHM') then
	AshitaCore:GetChatManager():QueueCommand(1, '/macro set 4');
	else 
	AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end

	gFunc.ApplyBaseSets(profile.Sets);	
end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(1, '/alias delete /bst');
end


local Settings = {
	player = gData.GetPlayer();
    TpVariant = 'Default',
	IdleVariant = 'Default',
	RestingVariant = 'Default',
	DT = 'OFF',
	Subslot = 'Whatev',
};

profile.HandleCommand = function(args)
    if (args[1] == 'tpset') then
        if (#args > 1) then
            Settings.TpVariant = args[2];
			gFunc.Echo(135,Settings.TpVariant)
        end
    end
	if (args[1] == 'idleset') then
        if (#args > 1) then
            Settings.IdleVariant = args[2];
        end
    end
	if (args[1] == 'DT') then
        if (#args > 1) then
			if (Settings.DT=='PDT' and args[2] == 'PDT') then
				Settings.DT = 'OFF'
			elseif (Settings.DT=='MDT' and args[2] == 'MDT') then 
				Settings.DT = 'OFF'
			else	
            Settings.DT = args[2];
			end
			gFunc.Echo(135,Settings.DT)
        end
    end
		
end

local sets = {
    Idle_Default = {
        Head = 'Darksteel Cap +1',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Gigant Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dst. Subligar +1', 
        Feet = 'Dst. Leggings +1',
    },
	Idle_opo= {
		BaseSet = 'Idle_Default',
         Neck = 'Opo-Opo Necklace',
    },	
	Idle_Af = {
         Body = 'Gallant Surcoat',
    },
	Idle_Fish = {
         Body = 'Angler\'s Tunica',
		 Hands = 'Angler\'s Gloves',
		 Legs = 'Angler\'s Hose',
		 Feet = 'Angler\'s Boots',
    },
	Idle_PDT = {
		Head = 'Darksteel Cap +1',
		Ear1 = 'Merman\'s Earring',
		Ear2 = 'Merman\'s Earring',
		Body = 'Dst. Harness +1',
		Hands = 'Dst. Mittens +1',
		Ring1 = 'Bomb Queen Ring',
		Ring2 = 'Merman\'s Ring',
	    Back = 'Gigant Mantle',
        Waist = 'Jungle Sash',	
		Legs = 'Dst. Subligar +1',
		Feet = 'Dst. Leggings +1',
	},
	Idle_MP = {
		BaseSet = 'Idle_Default',
		Head = 'Ogre mask',
		Neck = 'Uggalepih Pendant',
		Ear1 = 'Loquac. Earring',
		Body = 'Kirin\'s osode',
		Legs = 'Savage Loincloth',
		Ring1 = 'ether ring',
		Ring2 = 'astral ring',
		Feet = 'Dst. Leggings +1',
		Waist = 'powerful rope',
		Back = 'Gigant Mantle',
	},	
	
    Tp_Default = {
        Head = 'Panther Mask',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Stealth Earring',
        Body = 'Haubergeon',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Dusk Ledelsens',
    },
	
    Tp_67 = {
        Head = 'Mrc.Cpt. Headgear',
        Neck = 'Peacock Amulet',
		Ear1 = 'Merman\'s Earring',
		Ear2 = 'Merman\'s Earring',
        Body = 'Haubergeon',
        Hands = 'Tarasque mitts +1',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Swift Belt',
        Legs = 'Savage Loincloth',
        Feet = 'Luisant Sollerets',
    },
		Tp_60 = {
        Head = 'Mrc.Cpt. Headgear',
        Neck = 'Peacock Amulet',
        Ear1 = 'Fang Earring',
        Ear2 = 'Fang Earring',
        Body = 'Haubergeon',
        Hands = 'Ryl.Sqr. Mufflers',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Toreador\'s Ring',
        Back = 'Beak Mantle',
        Waist = 'Swift Belt',
        Legs = 'Savage Loincloth',
        Feet = 'Luisant Sollerets',
    },
		Tp_63 = {
		Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
    },

    Tp_50 = {
        Head = 'Royal Squire',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beetle Earring',
        Ear2 = 'Beetle Earring',
        Body = 'Savage Separates',
        Hands = 'Shep. Bracers',
        Ring1 = 'Sniper\'s Ring',
        Ring2 = 'Venerer Ring',
        Back = 'Raptor Mantle',
        Waist = 'Swift Belt',
        Legs = 'Republic Subligar',
        Feet = 'Luisant Sollerets',
    },
	
    Resting_Default = {
		Head = 'Darksteel Cap +1 +1',
		Ear1 = 'Relaxing earring',
		Ear2 = 'Merman\'s Earring',
		Body = 'Dst. Harness +1',
		Hands = 'Dst. Mittens +1',
		Ring1 = 'Bomb Queen Ring',
		Ring2 = 'Sattva Ring',
	    Back = 'Gigant Mantle',
        Waist = 'Jungle Sash',	
		Legs = 'Dst. Subligar +1',
		Feet = 'Dst. Leggings +1',
    },
	Resting_mp = {
		BaseSet=Idle_MP,
		ear2 = 'Relaxing earring',
    },
	Resting_PDT = {
		Head = 'Darksteel Cap +1 +1',
		Ear1 = 'Merman\'s Earring',
		Ear2 = 'Merman\'s Earring',
		Body = 'Dst. Harness +1',
		Hands = 'Dst. Mittens +1',	
		Ring1 = 'Merman\'s Ring',
		Ring2 = 'Sattva Ring',
		Back = 'Gigant mantle',
		Waist = 'Jungle Sash',
		Legs = 'Dst. Subligar +1',
		Feet = 'Dst. Leggings +1',
	},
			
	DefaultWS = {
        Head = 'Hecatomb Cap',
        Neck = 'Peacock Amulet',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Hecatomb Harness',
        Hands = 'Hecatomb Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Flame Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Thick Breeches',
        Feet = 'Hct. Leggings',
    },
	Reward = {
	    Feet = 'Monster Gaiters',
	    Body = 'Kirin\'s Osode',
		Hands = 'Ogre Gloves',
    },	
	
	Enmity = {
		Neck = 'parade gorget',
	
    },
	
	Haste = {
		Head = 'Panther Mask',
		Hands = 'Dusk Gloves',
		Waist = 'Swift Belt',
		Ring1 = 'Blitz Ring',
		Legs = 'Byakko\'s Haidate',
		Feet = 'Dusk Ledelsens',		
		
 		
    },
	
	Enhancing = {

     },		
	PDT = {
		Head = 'Darksteel Cap +1 +1',
		Body = 'Dst. Harness +1',
		Hands = 'Dst. Mittens +1',
		Ring1 = 'Jelly ring',
		Ring2 = 'Sattva Ring',
		Back = 'Gigant mantle',
		Waist = 'Jungle Sash',
		Legs = 'Dst. Subligar +1',
		Feet = 'Dst. Leggings +1',
	},
	MDT = {
	},	
		
	Mind = {
		Neck = 'Promise Badge',
		Body = 'Kirin\'s Osode',
		Waist = 'Friar\'s Rope',
		Legs = 'Savage Loincloth',
		Feet = 'Ogre Ledelsens',
	},
	
	Chr = {
		Head = 'Panther mask',
		Body = 'Kirin\'s Osode',
		Feet = 'Beast gaiters',
	},
	Charm = {
		Body = 'Kirin\'s Osode',
		Feet = 'Beast gaiters',		
	},	
	
	Fastcast = {
		Ear1 = 'Loquac. earring',
	},
	
	SIR = {
		Neck = 'Willpower torque',
		Feet = 'Mountain Gaiters',
	},
};

profile.Sets = sets;

profile.Packer = {
};

profile.HandleDefault = function()
    local player = gData.GetPlayer();
	
    if (player.Status == 'Engaged') then
		if (Settings.DT=='PDT') then
			gFunc.EquipSet(sets.PDT)
		elseif (Settings.DT=='MDT') then
			gFunc.EquipSet(sets.MDT)
		else
			gFunc.EquipSet('Tp_' .. Settings.TpVariant);
		end	
				
    elseif (player.Status == 'Resting') then
		gFunc.EquipSet('Resting_' .. Settings.IdleVariant);

    else
		if (Settings.DT=='PDT') then
			gFunc.EquipSet(sets.PDT)
		elseif (Settings.DT=='MDT') then
			gFunc.EquipSet(sets.MDT)
		elseif (pet ~= nil) and (pet.HPP < 100) then
			gFunc.EquipSet(gFunc.Combine('Idle_' .. Settings.IdleVariant,sets.PetRegen));
		else
			gFunc.EquipSet('Idle_' .. Settings.IdleVariant);

		end
    end
		if (player.SubJob == 'WHM') then
			if (Settings.DT == 'OFF') then
				if (player.MP < 50 ) then
					gFunc.Equip('Body', 'Gaudy Harness');	
				end
			end	
		end

		
end

profile.HandleAbility = function()
 local action = gData.GetAction();
 	local currentLevel = 0;
	local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
		if (myLevel ~= currentLevel) then
        gFunc.EvaluateLevels(profile.Sets, myLevel);
        currentLevel = myLevel;
		end

 	
 if (action.Name == 'Reward') then
			gFunc.EquipSet(gFunc.Combine(sets.Mind,sets.Reward))
        if (currentLevel >= 72) then
            gFunc.Equip('Ammo', 'Pet Food Zeta');
        elseif (currentLevel >= 60) then
            gFunc.Equip('Ammo', 'Pet Fd. Epsilon');
        elseif (currentLevel >= 48) then
            gFunc.Equip('Ammo', 'Pet Food Delta');
        elseif (currentLevel >= 36) then
           gFunc.Equip('Ammo', 'Pet Fd. Gamma');
        elseif (currentLevel >= 24) then
            gFunc.Equip('Ammo', 'Pet Food Beta');
       else
            gFunc.Equip('Ammo', 'Pet Food. Alpha');
        end
    elseif (action.Name == 'Provoke') then
        gFunc.EquipSet(sets.Enmity);		
	elseif (action.Name =='Charm') then
		gFunc.EquipSet(gFunc.Combine(sets.Charm,sets.Chr));	
	
	
end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()

end

profile.HandleMidcast = function()
	local player = gData.GetPlayer();		
	local spell = gData.GetAction();
	local action = gData.GetAction();
	
    --Your fast cast, expressed as a percentage.  0.3 = 30% fast cast.
    local fastCastValue = 0.00;
    --Minimum number of seconds to leave before spell completion.  Client can tack on up to 400ms wait due to packet interval..
    local minimumBuffer = 0.60;
    --Calculated delay for midcast..
    local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;
	
	if (action.Name == 'Utsusemi: Ichi') then
	    gFunc.InterimEquipSet(gFunc.Combine(sets.PDT,sets.SIR));
		gFunc.SetMidDelay(castDelay)
		gFunc.EquipSet(gFunc.Combine(sets.SIR,sets.Haste));	
	elseif (action.Name == 'Utsusemi: Ni') then
	    gFunc.InterimEquipSet(gFunc.Combine(sets.PDT,sets.SIR));
		gFunc.SetMidDelay(castDelay)
		gFunc.EquipSet(gFunc.Combine(sets.SIR,sets.Haste));	
	end
	
	
	if 	(action.skill == 'Healing Magic') or
	(action.skill == 'Enhancing Magic') or
	(action.skill == 'Divine Magic') then
		gFunc.EquipSet(sets.Haste);
	end
	if string.match(action.Name, 'Cure') or
	string.match(action.Name, 'Curaga') then
        gFunc.EquipSet(gFunc.Combine(sets.Haste,sets.Haste));

	end
	if (action.Name == 'Invisible') then
		gFunc.Equip('hands', 'Dream Mittens +1');
   end	
   	if (action.Name == 'Sneak') then
		gFunc.Equip('feet', 'Dream Boots +1');
   end
    if string.match(action.Name, 'Bar') then
		gFunc.EquipSet(sets.Enhancing);
	end
	if string.match(action.Name, 'Utsu') then
	    gFunc.EquipSet(sets.Haste);
	end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    if (action.Name == 'Vorpal Blade') then
        gFunc.EquipSet(sets.DefaultWS);
    elseif (action.Name == 'Sanguine Blade') then
        gFunc.EquipSet(sets.DefaultWS);
    else
        gFunc.EquipSet(sets.DefaultWS);
    end
end

return profile;