local profile = {}

local EleDoTs = T{'Rasp', 'Drown', 'Choke', 'Burn', 'Frost', 'Shock'}

local MNDEnfeebs = T{'Paralyze', 'Slow'}

local sets = {
    Idle = {
        Main = 'Earth Staff',
        Ammo = 'Phtm. Tathlum',
        Neck = 'Uggalepih Pendant',
        Ear1 = 'Coral Earring',
        Ear2 = 'Coral Earring',
        Body = 'Black Cloak',
        Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Back = 'Cheviot Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Savage Loincloth',
        Feet = 'Wizard\'s Sabots',
    },
		
	['Resting'] = {
        Main = 'Dark Staff',
        Head = 'Wizard\'s Petasos',
        Neck = 'Checkered Scarf',
        Ear1 = 'Relaxing Earring',
        Body = 'Errant Hpl.',
        Waist = 'Hierarch Belt',
    },
	
	TP = {
	
    },

    Precast = {
	
    },
	
	Nuke = {
	
	},
	
	SorcRing = {
		Ring1 = 'Sorcerer\'s Ring',
	},
	
	UggyPendant = {
		Neck = 'Uggalepih Pendant',
	},
	
	EleDoTs = {
	
	},
	
	Enfeebling = {
	
	},
	
	MNDEnfeebling = {
	
	},
	
	Drain = {
	
    },

    Cure = {
	
    },
	
    Enhancing = {
	
    },
	
	Sneak = {
		Feet = 'Dream Boots +1',
    },
	
	Invisible = {
		Hands = 'Dream Mittens +1',
    },
	
	Movement = {
	
	},
	
}

local staves = {
	--Update with HQ as you get them.
    ['Fire'] = 'Fire Staff',
    ['Earth'] = 'Earth Staff',
    ['Water'] = 'Water Staff',
    ['Wind'] = 'Wind Staff',
    ['Ice'] = 'Ice Staff',
    ['Thunder'] = 'Thunder Staff',
    ['Light'] = 'Light Staff',
    ['Dark'] = 'Dark Staff'
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
end

profile.OnUnload = function()

end

profile.HandleCommand = function(args)

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
    local spell = gData.GetAction()
    
	gFunc.EquipSet(sets.Precast)
	
end

--Midcast Function
profile.HandleMidcast = function()
    local spell = gData.GetAction()
	local target = gData.GetActionTarget()
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0)

    --Elemental Magic Spells
    if spell.Skill == 'Elemental Magic' then
        if (EleDoTs:contains(spell)) then
            gFunc.EquipSet(sets.EleDots)
        else
            gFunc.EquipSet(sets.Nuke);
            gFunc.Equip('main', staves[spell.Element]);
            --UggyPendant Check
            if UggyPendant(spell) then
                gFunc.EquipSet(gFunc.Combine(sets.Nuke,sets.UggyPendant));
            end
            --SorcRing Check
            if RingActive() then
                gFunc.EquipSet(gFunc.Combine(sets.Nuke,sets.SorcRing));
            end
            --ObiApplication Check
            if ObiCheck(spell) >= 1 then
                gFunc.Equip('waist', obis[spell.Element])
            end
        end
			
	--Enfeebling Magic Spells
	elseif spell.Skill == 'Enfeebling Magic' then
		--MND Based Enfeebling Trigger
		if (MNDEnfeebs:contains(spell)) then
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
		else
			gFunc.EquipSet(sets.Enhancing)
        end
		
	--Healing Magic Spells
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure)
    
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
function RingActive()
	local player = gData.GetPlayer()
	
	if player.HPP <= 75 and player.TP <= 1000 then
		return true
	end
	
	return false
	
end

--Checks for Uggy Pendant latent.
function UggyPendant(spell)
	local player = gData.GetPlayer()
	
	if spell.MppAftercast  <= 50 then
		return true
	end
	
	return false
	
end

return profile;