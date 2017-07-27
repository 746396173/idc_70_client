----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[5]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAICatchplayer_81 = class("ClsAICatchplayer_81", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAICatchplayer_81:getId()
	return "catchplayer_81";
end


-- AI时机
function ClsAICatchplayer_81:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAICatchplayer_81:getPriority()
	return 48;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndNum2is1(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- 玩家到达标记
	local player_arrive = battleData:GetData("player_arrive") or 0;
	-- 战场测试变量
	local num1 = battleData:GetData("num1") or 0;
	-- 玩家到达==1 or num1==4
	if ( not (player_arrive==1 or num1==4) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAICatchplayer_81:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndNum2is1(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

-- [备注]
local function targetCp1( ai_obj, last_targets )
	local battleData = getGameData():getBattleDataMt()

	-- 目标选择范围
	local fanwei = "all";
	-- 目标排序方法
	local sort_key = "";
	local sort_asc = 1;
	-- 目标选择数量
	local select_cnt = 1;

	local tmp_targets = ai_obj:selectTargets(fanwei)

	local owner = ai_obj:getOwner()

	-- sort_method
	tmp_targets = battleData:sortShipsByKey(owner, tmp_targets, sort_key, sort_asc)

	-- 目标处于状态列表
	local lst_in_buff = {}
	-- 目标不处于状态列表
	local lst_no_in_buff = {}

	local func_condition = function(ai_obj, target_obj)
		for k, v in pairs(lst_in_buff) do
			if not target_obj:hasBuff(v) then return false end
		end

		for k, v in pairs(lst_no_in_buff) do
			if target_obj:hasBuff(v) then return false end
		end

		-- 如果是条件直接调用，如果是普通条件，解析

		-- 指战役ship表第一列的ID
		local TBaseID = target_obj:getBaseId();
		if not (TBaseID==9) then return false end

		return true
	end

	local tmp_cnt = 0
	local targets_result = {}
	for _, target in ipairs(tmp_targets) do
		local target_obj = battleData:getShipByGenID(target)
		if target == -2 then
			target_obj = battleData
		end
		if target_obj and func_condition(ai_obj, target_obj) then
			table.insert(targets_result, target)
			tmp_cnt = tmp_cnt + 1
			if tmp_cnt >= select_cnt then break end
		end
	end

	return targets_result
end


--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]离场-[]
local function catchplayer_81_act_4( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	target_obj:release(false, true)

end

-- [备注]设置-[O阵营=1]
local function catchplayer_81_act_5( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:O阵营=1
	battleData:changeTeam(owner, 1 );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"enter_scene", "", {10, 1, 1, 0, 1, 0, }, }, 
	{"play_plot", "", {{6, 7, 8, }, }, }, 
	{"stop_ai", "", {{"bat_move1_81", }, }, }, 
	{"delete_ai", "", {{"bat_move1_81", }, }, }, 
	{"op", targetCp1, {catchplayer_81_act_4, }, }, 
	{"op", "", {catchplayer_81_act_5, }, }, 
	{"move_to", "", {1800, 100, 200, }, }, 
	{"play_plot", "", {{11, }, }, }, 
	{"battle_stop", "", {1, }, }, 
	{"delete_ai", "", {{"catchplayer_81", }, }, }, 
}

function ClsAICatchplayer_81:getActions()
	return actions
end

local all_target_method = {
}

function ClsAICatchplayer_81:getAllTargetMethod()
	return all_target_method
end

return ClsAICatchplayer_81

----------------------- Auto Genrate End   --------------------