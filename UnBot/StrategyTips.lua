
ClassStrategyCO = {};
ClassStrategyNC = {};

function InitializeStrategy()
	ClassStrategyCO = {
		[1] = {"grind","Autonomous Activities","When the bot has no target it will attack any nearby hostile target."},
		[2] = {"attack weak","Free Attack","Bots will pick their own target to attack while in combat."},
		[3] = {"attack force","Passive Attack","The bot will not automatically choose a target while in combat, the target has to be set by you."},
		[4] = {"tank","Grab a Single Monster","The bot will not aggro more than one enemy at a time."},
		[5] = {"tank aoe","Grab Multiple Monsters","The bot will aggro all available enemies at the same time."},
		[6] = {"tank assist","Tank Assist","The bot will assist the tank in the group."},
		[7] = {"dps","Single DPS","The bot will only focus on one enemy at a time."},
		[8] = {"dps aoe","Group AOE","The bot will use area of effect spells if there are multiple enemies."},
		[9] = {"dps assist","DPS Assist","The bot assists in destroying the targets in the group."}, -- Needs correction
		[10] = {"dps debuff","Damage Debuffs","The bot will cast debuffs on the target while in combat."}, -- Needs correction
		[11] = {"heal","Heal Teammates","The bot will no longer deal damage while in combat but will instead focus on healing injured members of the group."},
		[12] = {"aoe","AOE Damage","Bots use AOE damage while in combat."}, -- Needs correction
		[13] = {"flee","Distance","A bot will try to move away from its current target while in combat."}, -- Needs correction
		[14] = {"fire","Fire Damage","Bots uses fire-based spells to deal damage while in combat. (Mage bots only)"}, -- Needs correction
		[15] = {"fire aoe","Fire AOE","The bot will use fire-based area of effect spells if there are multiple enemies. (Mage bots only)"},
		[16] = {"frost","Frost Damage","Bots uses frost-based spells to deal damage while in combat. (Mage bots only)"}, -- Needs correction
		[17] = {"frost aoe","Frost AOE","The bot will use frost-based area of effect spells if there are multiple enemies. (Mage bots only)"},
		[18] = {"arcane","Arcane Damage","Bots uses arcane-based spells to deal damage while in combat. (Mage bots only)"}, -- Needs correction
		[19] = {"threat","Threat Control","The bot will be conservative while in combat to prevent gaining too much threat."}, -- Needs correction
		[20] = {"conserve mana","Conserve Mana","Bots will use their mana sparingly while in combat."}, -- Needs correction
		[21] = {"shadow","Shadow Damage","Bots uses shadow-based spells to deal damage while in combat. (Warlock and Priest bots only)"}, -- Needs correction
		[22] = {"shadow aoe","Shadow AOE","The bot will use shadow-based area of effect spells if there are multiple enemies. (Warlock and Priest bots only)"},
		[23] = {"shadow debuff","Shadow Debuffs","The bot will cast shadow-based debuffs on the target while in combat. (Warlock and Priest bots only)"},
		[24] = {"melee","Melee","The bot always move close to the target while in combat (Shaman bots only)"}, -- Needs correction
		[25] = {"melee aoe","Melee AOE","The bot always move close to the target while in combat and use AOE to damage their target. (Shaman bots only)"}, -- Needs correction
		[26] = {"rshadow","Shadow Resistance Aura","The bot will use Shadow Resistance Aura while in combat. (Paladin bots only)"},
		[27] = {"rfrost","Frost Resistance Aura","The bot will use Frost Resistance Aura while in combat. (Paladin bots only)"},
		[28] = {"rfire","Fire Resistance Aura","The bot will use Fire Resistance Aura while in combat. (Paladin bots only)"},
		[29] = {"barmor","Devotion Aura","The bot will use Devotion Aura while in combat. (Paladin bots only)"},
		[30] = {"bspeed","Crusader Aura","The bot will use Crusader Aura while in combat. (Paladin bots only)"},
		[31] = {"rnature","自然抗性光环","机器人在战斗中开启自然抗性光环。(针对猎人机器人)"}, -- Needs correction
		[32] = {"bhealth","生命BUFF","机器人在战斗中为自己和队友上提高生命的BUFF。"}, -- Needs correction
		[33] = {"bmana","辅助性BUFF","机器人在战斗中为自己和队友上辅助性的BUFF。"}, -- Needs correction
		[34] = {"bdps","进攻性BUFF","机器人在战斗中为自己和队友上进攻性的BUFF。"}, -- Needs correction
		[35] = {"bear","Bear and Dire Bear Form","The bot will use Bear Form or Dire Bear Form while in combat. (Druid bots only)"},
		[36] = {"cat","Cat Form","The bot will use Cat Form while in combat. (Druid bots only)"},
		[37] = {"cat aoe","Cat Form AOE","The bot will use Cat Form while in combat and focus on using AOE. (Druid bots only)"}, -- Needs correction
		[38] = {"caster","Ranged Damage","The bot will use ranged attacks while in combat. (Druid and Shaman bots only)"},
		[39] = {"caster aoe","Ranged AOE","When there are many targets, the bot will use ranged AOE. (Druid and Shaman bots only)"}, -- Needs correction
		[40] = {"caster debuff","AOE Debuff","The bot will cast AOE debuffs on their target while in combat. (Druid and Shaman bots only)"}, -- Needs correction
		[41] = {"totems","Totem","The bot will place totems on the ground while in combat. (Shaman bots only)"},
		[42] = {"loot","Loot","The bot will loot any nearby enemies while in combat."},
		[43] = {"naxx","Naxxramas","The bots behavior will be specific to Naxxramas. (This is only valid inside Naxxramas)"},
	};

	ClassStrategyNC = {
		[1] = {"grind","Autonomous Activities","The bot will check for nearby enemies to attack while not in combat."},
		[2] = {"move random","Move Randomly","The bot will run around randomly when it is bored and not in combat."},
		[3] = {"attack weak","Free Attack","The bot will freely choose an enemy to attack when it enters combat."},
		[4] = {"attack force","Passive Aggressive","The bot will not perform any actions while not in combat and you have to manually specify a target for them."},
		[5] = {"bhealth","生命BUFF","非战斗时，机器人会给自己和队友上提高生命的BUFF。"}, -- Needs correction
		[6] = {"bmana","辅助性BUFF","非战斗时，机器人会给自己和队友上辅助性BUFF。"}, -- Needs correction
		[7] = {"bdps","进攻性BUFF","非战斗时，机器人会给自己和队友上进攻性BUFF。"}, -- Needs correction
		[8] = {"emote","Emote","The bot will perform emotes from time to time when it is bored and not in combat."},
		[9] = {"food","Rest","The bot will receive food and drinks after leaving combat based on their requirements."},
		[10] = {"loot","Loot","The bot will loot any nearby enemies after leaving combat."},
		[11] = {"stay","Stay","The bot will stand still while not in combat."},
		[12] = {"follow","Follow","The bot will follow you while not in combat."},
		[13] = {"quest","Quest","The bot will accept and turn in quests with NPCs you are interacting with."},
		[14] = {"naxx","Naxxramas","The bots behavior will be specific to Naxxramas. (This is only valid inside Naxxramas)"},
	};
end
