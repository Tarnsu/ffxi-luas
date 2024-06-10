local profile = {};

local Settings = {
    CurrentLevel = 0,
}

local sets = {
    Idle = {
        Head = 'Darksteel Cap +1',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Ethereal Earring',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Gigant Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Crimson Cuisses',
        Feet = 'Homam Gambieras',
    },
	
	Resting = {
		Ear1 = 'Relaxing Earring',
	},
		
	TP = {
		Ammo = 'Tiphia Sting',
        Head = 'Ace\'s helm',
        Neck = 'Love Torque',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Assault Jerkin',
        Hands = 'Homam Manopolas',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Swift Belt',
        Legs = 'Homam Cosciales',
        Feet = 'Homam Gambieras',
    },
	
	WS = {
        Head = 'Hecatomb Cap',
        Neck = 'Love Torque',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Hecatomb Harness',
        Hands = 'Hecatomb Mittens',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Wyrm Belt',
        Legs = 'Barone Cosciales',
        Feet = 'Hct. Leggings',
    },
	
	Wheeling = {
	
	},
	
	Impulse = {
	
	},
	
	CallWyvern = {
		Body = 'Wyrm Mail',
	},
	
	AncientCircle = {
        Legs = 'Drachen Brais',
	},
	
    Jump = {
        Head = 'Hecatomb Cap',
        Neck = 'Love Torque',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Hecatomb Harness',
        Hands = 'Hecatomb Mittens',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Barone Cosciales',
        Feet = 'Drachen Greaves',
    },
	
	HighJump = {
        Head = 'Hecatomb Cap',
        Neck = 'Love Torque',
        Ear1 = 'Beastly Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Hecatomb Harness',
        Hands = 'Hecatomb Mittens',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Barone Cosciales',
        Feet = 'Drachen Greaves',
    },
	
    SpiritLink = {
        Neck = 'Promise Badge',
        Ring1 = 'Aqua Ring',
        Ring2 = 'Aqua Ring',
        Legs = 'Savage Loincloth',
    },    
	
    SteadyWing = {
        Legs = 'Drachen Brais',
        Feet = 'Homam Gambieras',
	},
	
    Angon = {
	
	},
	
	HealingBreath = {
		Head = 'Wyrm Armet',
        Feet = 'Homam Gambieras',
	},
	
	Precast = {
		Ear1 = 'Loquac. earring',
		Legs = 'Homam Cosciales',
	},

    SIRD = {
        Head = 'Drachen Armet',
        Hands = 'Homam Manopolas',
		Legs = 'Homam Cosciales',
        Feet = 'Homam Gambieras',
	},
	
	Sneak = {
		Feet = 'Dream Boots +1',
    },
	
	Invisible = {
		Hands = 'Dream Mittens +1',
    },
	
	Movement = {

	},
	
    PlayerAndPetRegen = {
        Body = 'Barone Corazza',
        Hands = 'Shep. Bracers',
    },
	
	PlayerRegen = {
        Body = 'Barone Corazza',
	},
	
	PetRegen = {
		Body = 'Drachen Mail',
        Hands = 'Shep. Bracers',
	},
	
};

profile.Sets = sets;

local function HandlePetAction(PetAction)
	local name = string.sub(PetAction.Name,1,string.len(PetAction.Name)-1);
	
	if string.match(name, 'Healing Breath') then
        gFunc.EquipSet(sets.HealingBreath);
    end
end

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
end

profile.OnUnload = function()

end

profile.HandleCommand = function(args)

end

profile.HandleDefault = function()
	local player = gData.GetPlayer();
	local pet = gData.GetPet();
	local petAction = gData.GetPetAction();
	
	--Level Sync handler
	local myLevel = player.MainJobSync;
    if (myLevel ~= Settings.CurrentLevel) then
        gFunc.EvaluateLevels(sets, myLevel);
        Settings.CurrentLevel = myLevel;
    end	
	
	--Pet Action Handler
	if (petAction ~= nil) then
        HandlePetAction(petAction);
        return;
    end
	
	--Gear change setups
    if player.Status == 'Engaged' then
        gFunc.EquipSet(sets.TP);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (pet ~= nil) and (player.HPP < 100) and (pet.HPP < 100) then
		gFunc.EquipSet(gFunc.Combine(sets.Idle,sets.PlayerAndPetRegen));
	elseif (pet ~= nil) and (pet.HPP < 100) then
		gFunc.EquipSet(gFunc.Combine(sets.Idle,sets.PetRegen));
	elseif (player.HPP < 100) then
		gFunc.EquipSet(gFunc.Combine(sets.Idle,sets.PlayerRegen));
	else
		gFunc.EquipSet(sets.Idle);
    end
	
	if (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
	end
	
	if (player.SubJob == 'WHM') or (player.SubJob == 'RDM') then
		if (player.MPP < 100 ) then
			gFunc.Equip('Ear2', 'Ethereal Earring');	
		end
	end
	
end

profile.HandleAbility = function()
	local ability = gData.GetAction();

    if (ability.Name == 'Call Wyvern') then
        gFunc.EquipSet(sets.CallWyvern);
	elseif (ability.Name == 'Ancient Circle') then
        gFunc.EquipSet(sets.AncientCircle);
	elseif (ability.Name == 'Jump') then
        gFunc.EquipSet(sets.Jump);
	elseif (ability.Name == 'Spirit Link') then
        gFunc.EquipSet(sets.SpiritLink);
	elseif (ability.Name == 'High Jump') then
        gFunc.EquipSet(sets.HighJump);
	elseif (ability.Name == 'Steady Wing') then
        gFunc.EquipSet(sets.SteadyWing);
	elseif (ability.Name == 'Angon') then
        gFunc.EquipSet(sets.Angon);
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
    
	gFunc.EquipSet(sets.Precast);
	
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
	local target = gData.GetActionTarget();
    local me = gData.GetPlayer().Name

    if spell.Skill == 'Ninjutsu' then
		if string.match(spell.Name, 'Monomi: Ichi') and (target.Name == me) then
            gFunc.EquipSet(sets.Sneak)
		elseif string.match(spell.Name, 'Tonko: Ichi') and (target.Name == me) then
            gFunc.EquipSet(sets.Invisible);
		else
			gFunc.EquipSet(sets.SIRD);
        end
	elseif spell.Skill == 'Enhancing Magic' then
		if string.match(spell.Name, 'Sneak') and (target.Name == me) then
		    gFunc.EquipSet(sets.Sneak);
		elseif string.match(spell.Name, 'Invisible') and (target.Name == me) then
            gFunc.EquipSet(sets.Invisible);
		else 
			gFunc.EquipSet(sets.SIRD);
        end
	else
		gFunc.EquipSet(sets.SIRD);
    end
	
end

profile.HandlePreshot = function() 

end

profile.HandleMidshot = function()

end

profile.HandleWeaponskill = function()
	local ws = gData.GetAction();
    
    if (ws.Name == "Wheeling Thrust") then
		gFunc.EquipSet(sets.Wheeling)
	elseif (ws.Name == "Impulse Drive") then
		gFunc.EquipSet(sets.Impulse)
	else
		gFunc.EquipSet(sets.WS)
	end
	
end

return profile;