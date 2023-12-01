
ClassStrategyCO = {};
ClassStrategyNC = {};

function InitializeStrategy()
	ClassStrategyCO = {
		[1] = {"grind","Autonomous Activities","When there is no target, the bot will attack a nearby target."}, -- Needs correction
		[2] = {"attack weak","Free Attack","Bots will freely choose targets to attack while in combat."}, -- Needs correction
		[3] = {"attack force","Passive Attack","The bot will not choose a target while in combat, and you must manually specify the target to attack."}, -- Needs correction
		[4] = {"tank","Grab a Single Monster","The bot will only grab one target at a time."}, -- Needs correction
		[5] = {"tank aoe","Grab Multiple Monsters","The bot will grab all targets at the same time."}, -- Needs correction
		[6] = {"tank assist","Tank Assist","The bot assists the tank in the group."}, -- Needs correction
		[7] = {"dps","Single DPS","The bot only focuses on one target at a time."}, -- Needs correction
		[8] = {"dps aoe","Group AOE","When there are many targets, the bot will use AOE."}, -- Needs correction
		[9] = {"dps assist","DPS Assist","The bot assists in destroying the targets in the group."}, -- Needs correction
		[10] = {"dps debuff","Damage Debuffs","The bot will cast debuffs on the target while in combat."}, -- Needs correction
		[11] = {"heal","Heal Teammates","The bot will heal injured teammates while in combat and will no longer deal damage."}, -- Needs correction
		[12] = {"aoe","AOE Damage","Bots use AOE damage while in combat."}, -- Needs correction
		[13] = {"flee","Distance","A bot will try to move away from its current target while in combat."}, -- Needs correction
		[14] = {"fire","Fire Damage","Bots uses fire-based spells to deal damage while in combat. (Mage bots only)"}, -- Needs correction
		[15] = {"fire aoe","Fire AOE","When there are many targets, the bot will use fire-based AOE. (Mage bots only)"}, -- Needs correction
		[16] = {"frost","Frost Damage","Bots uses frost-based spells to deal damage while in combat. (Mage bots only)"}, -- Needs correction
		[17] = {"frost aoe","Frost AOE","When there are many targets, the bot will use frost-based AOE. (Mage bots only)"}, -- Needs correction
		[18] = {"arcane","Arcane Damage","Bots uses arcane-based spells to deal damage while in combat. (Mage bots only)"}, -- Needs correction
		[19] = {"threat","Threat Control","The bot will be conservative while in combat to prevent gaining too much threat."}, -- Needs correction
		[20] = {"conserve mana","Conserve Mana","Bots will use their mana sparingly while in combat."}, -- Needs correction
		[21] = {"shadow","Shadow Damage","Bots uses shadow-based spells to deal damage while in combat. (Warlock and Priest bots only)"}, -- Needs correction
		[22] = {"shadow aoe","Shadow AOE","When there are many targets, the bot will use shadow-based AOE. (Warlock and Priest bots only)"}, -- Needs correction
		[23] = {"shadow debuff","Shadow Debuffs","The bot will cast shadow-based debuffs on the target while in combat. (Warlock and Priest bots only)"}, -- Needs correction
		[24] = {"melee","Melee","The bot always move close to the target while in combat (Shaman bots only)"}, -- Needs correction
		[25] = {"melee aoe","Melee AOE","The bot always move close to the target while in combat and use AOE to damage their target. (Shaman bots only)"}, -- Needs correction
		[26] = {"rshadow","Shadow Resistance Aura","The bot will use Shadow Resistance Aura while in combat. (Paladin bots only)"}, -- Needs correction
		[27] = {"rfrost","Frost Resistance Aura","The bot will use Frost Resistance Aura while in combat. (Paladin bots only)"}, -- Needs correction
		[28] = {"rfire","Fire Resistance Aura","The bot will use Fire Resistance Aura while in combat. (Paladin bots only)"}, -- Needs correction
		[29] = {"barmor","Devotion Aura","The bot will use Devotion Aura while in combat. (Paladin bots only)"}, -- Needs correction
		[30] = {"bspeed","Crusader Aura","The bot will use Crusade Aura while in combat. (Paladin bots only)"}, -- Needs correction
		[31] = {"rnature","自然抗性光环","机器人在战斗中开启自然抗性光环。(针对猎人机器人)"}, -- Needs correction
		[32] = {"bhealth","生命BUFF","机器人在战斗中为自己和队友上提高生命的BUFF。"}, -- Needs correction
		[33] = {"bmana","辅助性BUFF","机器人在战斗中为自己和队友上辅助性的BUFF。"}, -- Needs correction
		[34] = {"bdps","进攻性BUFF","机器人在战斗中为自己和队友上进攻性的BUFF。"}, -- Needs correction
		[35] = {"bear","Bear and Dire Bear Form","The bot will use Bear or Dire Bear Form while in combat. (Druid bots only)"}, -- Needs correction
		[36] = {"cat","Cat Form","The bot will use Cat Form while in combat. (Druid bots only)"}, -- Needs correction
		[37] = {"cat aoe","Cat Form AOE","The bot will use Cat Form while in combat and focus on using AOE. (Druid bots only)"}, -- Needs correction
		[38] = {"caster","Ranged Damage","The bot will use ranged attacks while in combat. (Druid and Shaman bots only)"}, -- Needs correction
		[39] = {"caster aoe","Ranged AOE","When there are many targets, the bot will use ranged AOE. (Druid and Shaman bots only)"}, -- Needs correction
		[40] = {"caster debuff","AOE Debuff","The bot will cast AOE debuffs on their target while in combat. (Druid and Shaman bots only)"}, -- Needs correction
		[41] = {"totems","Totem","The bot will place totems while in combat. (Shaman bots only)"}, -- Needs correction
		[42] = {"loot","Loot","The bot will loot nearby creatures while in combat."}, -- Needs correction
		[43] = {"naxx","Naxxramas","Bot behavior will be specific to Naxxramas. (Only valid inside Naxxramas)"}, -- Needs correction
	};

	ClassStrategyNC = {
		[1] = {"grind","Autonomous Activities","While not in combat, the bot checks for nearby targets to attack."}, -- Needs correction
		[2] = {"move random","Move Randomly","While not in combat, the bot will run around randomly when it is bored."}, -- Needs correction
		[3] = {"attack weak","Free Attack","While not in combat, the bot can freely choose a target to attack when it enters combat."}, -- Needs correction
		[4] = {"attack force","Passive Aggressive","While not in combat, the bot will not perform any attacks, and you must manually specify the target."}, -- Needs correction
		[5] = {"bhealth","生命BUFF","非战斗时，机器人会给自己和队友上提高生命的BUFF。"}, -- Needs correction
		[6] = {"bmana","辅助性BUFF","非战斗时，机器人会给自己和队友上辅助性BUFF。"}, -- Needs correction
		[7] = {"bdps","进攻性BUFF","非战斗时，机器人会给自己和队友上进攻性BUFF。"}, -- Needs correction
		[8] = {"emote","Emote","While not in combat, the bot will perform emotes from time to time when it is bored."}, -- Needs correction
		[9] = {"food","Rest","After leaving combat, the bot gives itself water and bread according to the situation."}, -- Needs correction
		[10] = {"loot","Loot","After leaving combat, the bot will loot nearby creatures."}, -- Needs correction
		[11] = {"stay","Stay","While not in combat, the bot will stand still."}, -- Needs correction
		[12] = {"follow","Follow","While not in combat, the robot follows the player."}, -- Needs correction
		[13] = {"quest","Quest","While not in combat, the bot will accept and complete quests for the NPC the player is currently interacting with."}, -- Needs correction
		[14] = {"naxx","Naxxramas","Bot behavior will be specific to Naxxramas. (Only valid inside Naxxramas)"}, -- Needs correction
	};
end
