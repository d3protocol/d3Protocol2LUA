--其实我是个LUA文件
local name=MsgName();
local msg=GetMsg();

--过滤一些常见的消息
if (name ~= 'Attribute.AttributeSetValueMessage') and
   (name ~= 'Misc.TrickleMessage') and
   (name ~= 'Misc.DWordDataMessage') and
   (name ~= 'Misc.BoolDataMessage') and
   (name ~= 'Misc.FloatingNumberMessag')
then
	-- PrintInfo(name); --打印消息名称,输出到置顶窗体
end

--这里的'Misc.RareMonsterNamesMessage'是怪物名称

if name == 'Misc.RareMonsterNamesMessage' then
	PrintInfo("一屏距离内发现精英");  --一般认为有名有姓的才算是JY，咳咳
	PlayeMSG1();
end;

--这个玩意是用来描述'ACDEnterKnownMessage' 的很重要发现物品或者怪物的消息
if name == 'ACD.ACDEnterKnownMessage' then
	if (msg.Quality>=9) then --Quality>9的情况下是传奇装备，任务物品不属于传奇装备
		PrintInfo(msg:AsText());
		PlayeMSG2();
	end;
end

if (name == 'Game.QuitGameMessage') then
	PrintInfo('游戏退出了。');
end

--[[--这里可以打印出装备或者怪物的属性信息，已注释，其他消息构造体请参考d3protocolClass.cs
if (name == 'Attribute.AttributesSetValuesMessage') then
	--获取具体属性信息
	for i=0,msg.atKeyVals.Length-1,1 do
		print(msg.atKeyVals[i].Attribute.Name);
		if msg.atKeyVals[i].Attribute.IsInteger then
			print(msg.atKeyVals[i].Int);
		else
			print(msg.atKeyVals[i].Float);
		end;
	end  
end
]]