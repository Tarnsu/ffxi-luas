local profile = {};

local Settings = {
    CurrentLevel = 0,
}

local sets = {
    Idle = {

    },
	
	Resting = {

	},
		
	TP = {

    },
	
	WS = {

    },
	
	Precast = {

	},

    SIRD = {

	},
	
	Sneak = {
		Feet = 'Dream Boots +1',
    },
	
	Invisible = {
		Hands = 'Dream Mittens +1',
    },
	
	Movement = {

	},
	
    Regen = {
	
    },
	
};

profile.Sets = sets;

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
end

profile.OnUnload = function()

end

profile.HandleCommand = function(args)

end

profile.HandleDefault = function()
	local player = gData.GetPlayer();
	
	--Level Sync handler
	local myLevel = player.MainJobSync;
    if (myLevel ~= Settings.CurrentLevel) then
        gFunc.EvaluateLevels(sets, myLevel);
        Settings.CurrentLevel = myLevel;
    end	

	--Gear change setups
    if player.Status == 'Engaged' then
        gFunc.EquipSet(sets.TP);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
	elseif (player.HPP < 100) then
		gFunc.EquipSet(gFunc.Combine(sets.Idle,sets.Regen));
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

    -- if (ability.Name == 'Call Wyvern') then
        -- gFunc.EquipSet(sets.CallWyvern);
	-- elseif (ability.Name == 'Ancient Circle') then
        -- gFunc.EquipSet(sets.AncientCircle);
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
    -- end
	
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
		--add complexity
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
    
    -- if (ws.Name == "Wheeling Thrust") then
		-- gFunc.EquipSet(sets.Wheeling)
	-- elseif (ws.Name == "Impulse Drive") then
		-- gFunc.EquipSet(sets.Impulse)
	-- else
		gFunc.EquipSet(sets.WS)
	-- end
	
end

return profile;