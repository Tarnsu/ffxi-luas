local profile = {};

EleDoTs = T{'Rasp', 'Drown', 'Choke', 'Burn', 'Frost', 'Shock'};

local sets = {
    ['Idle'] = {
        Main = 'Terra\'s Staff',
        Ammo = 'Hedgehog Bomb',
        Head = 'Healer\'s Cap',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Cleric\'s Bliaut',
        Hands = 'Blessed Mitts',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Hexerei Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Blessed Trousers',
        Feet = 'Herald\'s Gaiters',
    },
		
	Resting = {
        Main = 'Pluto\'s Staff',
        Head = 'Hydra Beret',
        Neck = 'Checkered Scarf',
        Ear1 = 'Relaxing Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Cleric\'s Bliaut',
		Hands = 'Hydra Gloves',
        Ring1 = 'Ether Ring',
        Ring2 = 'Astral Ring',
        Waist = 'Cleric\'s Belt',
        Legs = 'Hydra Brais',
    },
	
	TP = {
	
    },

    Precast = {
        Ear1 = 'Loquac. Earring',
        Feet = 'Rostrum Pumps',
    },
	
	CurePrecast = {
		Main = 'Rucke\'s Rung',
		Ear1 = 'Loquac. Earring',
		Feet = 'Cure Clogs',
	},
	
	UggyPendant = {
		Neck = 'Uggalepih Pendant',
	},
	
	EleDebuff = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Nashira Turban',
        Neck = 'Elemental Torque',
        Ear1 = 'Morion Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Errant Hpl.',
        Hands = 'Errant Cuffs',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
	
	Enfeebling = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Nashira Turban',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Morion Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Healer\'s Bliaut',
        Hands = 'Cleric\'s Mitts',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Nashira Seraweels',
        Feet = 'Rostrum Pumps',
    },
	
	MNDEnfeebling = {
        Head = 'Nashira Turban',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Healer\'s Bliaut',
        Hands = 'Cleric\'s Mitts',
        Ring1 = 'Aqua Ring',
        Ring2 = 'Aqua Ring',
        Back = 'Rainbow Cape',
        Waist = 'Cleric\'s Belt',
        Legs = 'Nashira Seraweels',
        Feet = 'Clr. Duckbills +1',
    },
	
	Drain = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Nashira Turban',
        Ear1 = 'Novia Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Blessed Bliaut',
        Hands = 'Blessed Mitts',
        Waist = 'Swift Belt',
        Legs = 'Nashira Seraweels',
        Feet = 'Blessed Pumps +1',
    },

    Cure = {
        Main = 'Apollo\'s Staff',
        Ammo = 'Hedgehog Bomb',
        Head = 'Hydra Beret',
        Neck = 'Justice Badge',
        Ear1 = 'Novia Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Raven Jupon',
        Hands = 'Healer\'s Mitts',
        Ring1 = 'Aqua Ring',
        Ring2 = 'Aqua Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Blessed Trousers',
        Feet = 'Blessed Pumps +1',
    },
	
    Enhancing = {
        Neck = 'Enhancing Torque',
        Body = 'Blessed Bliaut',
        Feet = 'Clr. Duckbills +1',
    },
	
	Sneak = {
		Feet = 'Dream Boots +1',
		Back = 'Skulker\'s Cape',
    },
	
	Invisible = {
		Hands = 'Dream Mittens +1',
		Back = 'Skulker\'s Cape',
    },
	
	Movement = {
		Feet = 'Herald\'s Gaiters',
	},
	
    Stoneskin = {
        Main = 'Kirin\'s Pole',
        Head = 'Healer\'s Cap',
        Neck = 'Enhancing Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Errant Hpl.',
        Hands = 'Blessed Mitts',
        Ring1 = 'Aqua Ring',
        Ring2 = 'Aqua Ring',
        Back = 'Rainbow Cape',
        Waist = 'Cleric\'s Belt',
        Legs = 'Mahatma Slops',
        Feet = 'Clr. Duckbills +1',
    },
	
    Divine = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Healer\'s Cap',
        Neck = 'Justice Badge',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Novio Earring',
        Body = 'Errant Hpl.',
        Hands = 'Blessed Mitts',
        Ring1 = 'Aqua Ring',
        Ring2 = 'Aqua Ring',
        Back = 'Rainbow Cape',
        Waist = 'Cleric\'s Belt',
        Legs = 'Healer\'s Pantaln.',
        Feet = 'Clr. Duckbills +1',
    },
	
    BarSpells = {
        Neck = 'Enhancing Torque',
        Legs = 'Cleric\'s Pantaln.',
        Feet = 'Clr. Duckbills +1',
    },
	
    Regen = {
        Main = 'Rucke\'s Rung',
        Ammo = 'Hedgehog Bomb',
        Head = 'Hydra Beret',
        Ear1 = 'Novia Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Cleric\'s Bliaut',
        Hands = 'Blessed Mitts',
        Waist = 'Penitent\'s Rope',
        Legs = 'Nashira Seraweels',
        Feet = 'Blessed Pumps +1',
    },
	
}

--to do: add cursna to healing skill set, cure 5 set that's less focused on enmity, add a haste set with haste

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

profile.Packer = {};

profile.OnLoad = function()
	gSettings.AllowAddSet = true
	
	local player = gData.GetPlayer();
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 4');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /whm /lac fwd');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind F9 /whm enmityMode');
end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /whm /lac fwd');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind F9');
end

local Settings = {
	player = gData.GetPlayer(),
	enmityMode = 1,
	skillMode = 1,
	sorcRingMode = 0,
};

profile.HandleCommand = function(args)

	--Enmity Mode Toggle
    if (args[1] == 'enmityMode') then
        if (Settings.enmityMode == 1) then
            gFunc.Echo(158, "Enmity Mode OFF")
            Settings.enmityMode = 0
        else
            gFunc.Echo(158, "Enmity Mode ON")
            Settings.enmityMode = 1
        end
    end	
	
end

--Default State. Acts as aftercast and state change combined. Constantly checks.
profile.HandleDefault = function()
	
	local player = gData.GetPlayer()
    if player.Status == 'Engaged' then
        gFunc.EquipSet(sets.TP)
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting)
    else
		gFunc.EquipSet(sets.Idle)
    end
	
	if (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement)
	end
	
end

--Precast for Job Ability
profile.HandleAbility = function()
	local ability = gData.GetAction()
	
end

--Precast for Item
profile.HandleItem = function()
    local item = gData.GetAction()

	if string.match(item.Name, 'Silent Oil') then 
		gFunc.EquipSet(sets.Sneak)
	elseif string.match(item.Name, 'Prism Powder') then 
		gFunc.EquipSet(sets.Invisible)
	end
end

--Precast Function
profile.HandlePrecast = function()
	local CureSpells = T{'Cure','Cure II','Cure III','Cure IV','Cure V','Curaga','Curaga II','Curaga III'};
    local spell = gData.GetAction()
    
	gFunc.EquipSet(sets.Precast)
	
	-- convert the following into a cure precast when i get cure clogs
	
	if spell.Skill == 'Healing Magic' then
		if (CureSpells:contains(spell.Name)) then
			gFunc.EquipSet(sets.CurePrecast)
		end
	end
	
end

--Midcast Function
profile.HandleMidcast = function()
	local MNDEnfeebs = T{'Paralyze', 'Slow'};
	local BarSpells = T{'Barfira', 'Barblizzara', 'Baraera', 'Barstonra', 'Barthundra', 'Barwatera','Barsleepra', 'Barpoisonra', 'Barparalyzra', 'Barblindra', 'Barsilencera', 'Barpetra', 'Barvira', 'Baramnesra'};
	local RegenSpells = T{'Regen', 'Regen II', 'Regen III'};
    local spell = gData.GetAction()
	local target = gData.GetActionTarget()
    local environment = gData.GetEnvironment();
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0)

    --Elemental Magic Spells
    if spell.Skill == 'Elemental Magic' then
            gFunc.EquipSet(sets.Elemental)
			gFunc.Equip('main', staves[spell.Element]);
			
	--Enfeebling Magic Spells
	elseif spell.Skill == 'Enfeebling Magic' then
		--MND Based Enfeebling Trigger
		if (MNDEnfeebs:contains(spell.Name)) then
			gFunc.EquipSet(sets.MNDEnfeebling)
		--Standard Enfeebling Trigger
		else
			gFunc.EquipSet(sets.Enfeebling)
		end
		gFunc.Equip('main', staves[spell.Element])
			
	--Dark Magic Spells
	elseif spell.Skill == 'Dark Magic' then
        gFunc.EquipSet(sets.Drain)
		gFunc.Equip('main', staves[spell.Element])
		--Dark Obi does apply to Drain/Aspir
		if ObiCheck(spell) >= 1 then
			gFunc.Equip('waist', obis[spell.Element])
		end
	
	--Enhancing Magic Spells
	elseif spell.Skill == 'Enhancing Magic' then
		--Sneak Gear
		if string.match(spell.Name, 'Sneak') and (target.Name == me) then
            gFunc.EquipSet(sets.Sneak)
		--Invisible Gear
		elseif string.match(spell.Name, 'Invisible') and (target.Name == me) then
            gFunc.EquipSet(sets.Invisible)
		--Standard Enfeebling
		elseif string.match(spell.Name, 'Stoneskin') then
			gFunc.EquipSet(sets.Stoneskin)
		elseif (BarSpells:contains(spell.Name)) then
			gFunc.EquipSet(sets.BarSpells)
		elseif (RegenSpells:contains(spell.Name)) then
			gFunc.EquipSet(sets.Regen)
		else
			gFunc.EquipSet(sets.Enhancing)
        end
		
	--Healing Magic Spells
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure)
		
	--Divine Magic Spells
	elseif (spell.Skill == 'Divine Magic') then
        gFunc.EquipSet(sets.Divine)
		gFunc.Equip('main', staves[spell.Element]);
    
    --Spell Interupt / Haste Default Set	
	else
		gFunc.EquipSet(sets.SIRD)
    end
	
end

--Weaponskill Function
profile.HandleWeaponskill = function()

    local ws = gData.GetAction()
    
    gFunc.EquipSet(sets.WS)
	
end

--Checks for Obi Applicability. Accounts for negative weather/day associations. Obi must hit 10% to pass. 
function ObiCheck(spell)
	local element = spell.Element
	local zone = gData.GetEnvironment()
	
	local badEle = {
		['Fire'] = 'Water',
		['Earth'] = 'Wind',
		['Water'] = 'Thunder',
		['Wind'] = 'Ice',
		['Ice'] = 'Fire',
		['Thunder'] = 'Earth',
		['Light'] = 'Dark',
		['Dark'] = 'Light'
	};
	
	local weight = 0
	
	--Day comparison
	if string.find(zone.Day, spell.Element) then
		weight = weight + 1
	elseif string.find(zone.Day, badEle[spell.Element]) then
		weight = weight - 1
	end
	
	--Weather comparison
	if string.find(zone.Weather, spell.Element) then
		if string.find(zone.Weather, 'x2') then
			weight = weight + 2
		else
			weight = weight + 1
		end
	elseif string.find(zone.Weather, badEle[spell.Element]) then
		if string.find(zone.Weather, 'x2') then
			weight = weight - 2
		else
			weight = weight - 1
		end
	end	
	
	return weight

end

--Checks for Sorc Ring latent.

--Checks for Uggy Pendant latent.
function UggyPendant(spell)
	local player = gData.GetPlayer()
	
	if spell.MppAftercast  <= 50 then
		return true
	end
	
	return false
	
end

return profile;