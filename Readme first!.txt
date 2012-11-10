首先请原谅我糟糕的英文，我会尽量来解释
First of all, please forgive my poor English, I will try to explain

这是一个免费软件
This is a free software 
这是一个战斗记录工具
This is a combatlog tools
这是一个将D3协议转换为LUA语言的框架
This is a framework of D3protocol to LUA

Require .netframework 4.0

为什么存在两个模式？
Why there are two mode?

网络延时或者繁忙，协议流因为丢包导致错误
When biglag or network busy,the mode 1:Local listens will lost some packages, Protocol stream results in an error because the packet loss.

所以对于要求无错解析的程序采用SPI底层包过滤的方式来运行
SPI underlying packet filtering requirements without error.

SPI模式要求安装SPI过滤器
The SPI mode require the installation of the SPI filter.

解压"D3protocol Install Binary Manbe will be Warning by Some Antivirus Firewall.zip"管理员身份运行:d3protocolinstall.exe -install
Decompression "D3protocol the Install Binary Manbe will be Warning by Some the Antivirus is Firewall.zip"
And run as administrator : "d3protocolinstall.exe -install"

如果你会纠结于病毒警告，那么我提供了D3protocol Install Source源代码,自己用DELPHI7编译一份吧。
I Provided "D3protocol Install Source" source code, IF you attach importance to virus warning, You can compile it by DELPHI7 yourself.

模式1，要求管理员身份运行，游戏过程中可以随时启动。
Mode 1, Require Run as administrator, you can start at any time during the game.

模式2，要求在进入游戏副本前启动，游戏中途关闭则无法再进行监听，除非重新进入一个副本。
Mode 2, Require start D3Protocol.exe application before you create a game, 
the game midway Close no longer be able to listen, unless re-enter.

模式2在管理员身份运行的情况下会有一个错误，忽视他并且继续，他可以正常工作。
Mode 2 Run as administrator case there will be a mistake to ignore him and continue, he can work.

游戏协议流会被翻译成对象，交给LUA脚本进行解释
Game protocol stream will be translated into the object, to explain to the LUA script

例子1：拾取警告
example1：loot alert

local name=MsgName();
local msg=GetMsg();

--这个玩意是用来描述'ACDEnterKnownMessage' 的很重要发现物品或者怪物的消息
--This stuff is used to describe the 'ACDEnterKnownMessage' very important finding items or monsters message
if name == 'ACD.ACDEnterKnownMessage' then
	if (msg.Quality>9) and (msg.Field2~=18) then 
		--Quality>9的情况下是传奇装备，任务物品不属于传奇装备
		--Legendary equipment quality >9
		PrintInfo(msg:AsText());
		PlayeMSG2();--Applaud
	end;
end

某些协议会根据情况被屏蔽，毕竟我不想惹恼了暴雪。
Some protocol message will be shield, after all, I do not want to annoy Blizzard.
