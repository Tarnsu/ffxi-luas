local profile = {};

EleDoTs = T{'Rasp', 'Drown', 'Choke', 'Burn', 'Frost', 'Shock'};

BarSpells = T{'Barfira', 'Barblizzara', 'Baraera', 'Barstonra', 'Barthundra', 'Barwatera','Barsleepra', 'Barpoisonra', 'Barparalyzra', 'Barblindra', 'Barsilencera', 'Barpetra', 'Barvira'};

RegenSpells = T{'Regen', 'Regen II', 'Regen III'};

local sets = {
    ['Idle'] = {
        Main = 'Terra\'s Staff',
        Ammo = 'Hedgehog Bomb',
        Head = 'Cleric\'s Cap',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Coral Earring',
        Ear2 = 'Coral Earring',
        Body = 'Cleric\'s Bliaut',
        Hands = 'Blessed Mitts',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Back = 'Cheviot Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Savage Loincloth',
        Feet = 'Herald\'s Gaiters',
    },
		
	Resting = {
        Main = 'Pluto\'s Staff',
        Ear1 = 'Relaxing Earring',
        Body = 'Cleric\'s Bliaut',
        Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
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
        Head = 'Errant Hat',
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
        Head = 'Errant Hat',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Morion Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Healer\'s Bliaut',
        Hands = 'Errant Cuffs',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
	
	MNDEnfeebling = {
        Head = 'Healer\'s Cap',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Healer\'s Bliaut',
        Hands = 'Blessed Mitts',
        Ring1 = 'Aqua Ring',
        Ring2 = 'Aqua Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Clr. Duckbills +1',
    },
	
	Drain = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Cleric\'s Cap',
        Ear1 = 'Novia Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Blessed Bliaut',
        Hands = 'Blessed Mitts',
        Waist = 'Swift Belt',
        Legs = 'Blessed Trousers',
        Feet = 'Blessed Pumps +1',
    },

    ['Cure'] = {
        Main = 'Apollo\'s Staff',
        Ammo = 'Hedgehog Bomb',
        Head = 'Raven Beret',
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
        Neck = 'Justice Badge',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Hands = 'Savage Gauntlets',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'Red Cape +1',
        Waist = 'Swift Belt',
        Legs = 'Savage Loincloth',
        Feet = 'Seer\'s Pumps +1',
    },
	
    Nuke_LowSkillLowEnmity = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Checkered Scarf',
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Igqira Weskit',
        Hands = 'Zenith Mitts',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Mahatma Slops',
        Feet = 'Src. Sabots +1',
    },
	
    Nuke_HighSkillLowEnmity = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Src. Petasos +1',
        Neck = 'Elemental Torque',
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Errant Hpl.',
        Hands = 'Wizard\'s Gloves',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Mahatma Slops',
        Feet = 'Src. Sabots +1',
    },
	
    Nuke_LowSkillHighEnmity = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Errant Hat',
        Neck = 'Checkered Scarf',
        Ear1 = 'Novio Earring',
        Ear2 = 'Novia Earring',
        Body = 'Errant Hpl.',
        Hands = 'Wizard\'s Gloves',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Src. Sabots +1',
    },
	
	Nuke_HighSkillHighEnmity = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Src. Petasos +1',
        Neck = 'Elemental Torque',
        Ear1 = 'Novio Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Errant Hpl.',
        Hands = 'Wizard\'s Gloves',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Src. Sabots +1',
    },
	
    Divine = {
        Head = 'Healer\'s Cap',
        Neck = 'Justice Badge',
        Ear1 = 'Geist Earring',
        Ear2 = 'Moldavite Earring',
        Hands = 'Savage Gauntlets',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'Red Cape +1',
        Waist = 'Swift Belt',
        Legs = 'Savage Loincloth',
        Feet = 'Seer\'s Pumps +1',
    },
	
}

local staves = {
	--Update with HQ as you get them.
    ['Fire'] = 'Vulcan\'s Staff',
    ['Earth'] = 'Terra\'s Staff',
    ['Water'] = 'Water Staff',
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