������ԭ��������Ӣ�ģ��һᾡ��������
First of all, please forgive my poor English, I will try to explain

����һ��������
This is a free software 
����һ��ս����¼����
This is a combatlog tools
����һ����D3Э��ת��ΪLUA���ԵĿ��
This is a framework of D3protocol to LUA

Require .netframework 4.0

Ϊʲô��������ģʽ��
Why there are two mode?

������ʱ���߷�æ��Э������Ϊ�������´���
When biglag or network busy,the mode 1:Local listens will lost some packages, Protocol stream results in an error because the packet loss.

���Զ���Ҫ���޴�����ĳ������SPI�ײ�����˵ķ�ʽ������
SPI underlying packet filtering requirements without error.

SPIģʽҪ��װSPI������
The SPI mode require the installation of the SPI filter.

��ѹ"D3protocol Install Binary Manbe will be Warning by Some Antivirus Firewall.zip"����Ա�������:d3protocolinstall.exe -install
Decompression "D3protocol the Install Binary Manbe will be Warning by Some the Antivirus is Firewall.zip"
And run as administrator : "d3protocolinstall.exe -install"

����������ڲ������棬��ô���ṩ��D3protocol Install SourceԴ����,�Լ���DELPHI7����һ�ݰɡ�
I Provided "D3protocol Install Source" source code, IF you attach importance to virus warning, You can compile it by DELPHI7 yourself.

ģʽ1��Ҫ�����Ա������У���Ϸ�����п�����ʱ������
Mode 1, Require Run as administrator, you can start at any time during the game.

ģʽ2��Ҫ���ڽ�����Ϸ����ǰ��������Ϸ��;�ر����޷��ٽ��м������������½���һ��������
Mode 2, Require start D3Protocol.exe application before you create a game, 
the game midway Close no longer be able to listen, unless re-enter.

ģʽ2�ڹ���Ա������е�����»���һ�����󣬺��������Ҽ���������������������
Mode 2 Run as administrator case there will be a mistake to ignore him and continue, he can work.

��ϷЭ�����ᱻ����ɶ��󣬽���LUA�ű����н���
Game protocol stream will be translated into the object, to explain to the LUA script

����1��ʰȡ����
example1��loot alert

local name=MsgName();
local msg=GetMsg();

--�����������������'ACDEnterKnownMessage' �ĺ���Ҫ������Ʒ���߹������Ϣ
--This stuff is used to describe the 'ACDEnterKnownMessage' very important finding items or monsters message
if name == 'ACD.ACDEnterKnownMessage' then
	if (msg.Quality>9) and (msg.Field2~=18) then 
		--Quality>9��������Ǵ���װ����������Ʒ�����ڴ���װ��
		--Legendary equipment quality >9
		PrintInfo(msg:AsText());
		PlayeMSG2();--Applaud
	end;
end

ĳЩЭ��������������Σ��Ͼ��Ҳ��������˱�ѩ��
Some protocol message will be shield, after all, I do not want to annoy Blizzard.
