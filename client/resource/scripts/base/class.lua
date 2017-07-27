-- quick cocos2d �Դ�һ��class�ļ������ļ���ʱ����
-- �벻Ҫrequire����ļ� -- canux 2013-0516

--�������

--��ȡһ��class�ĸ���
function Super(TmpClass)
	return getmetatable(TmpClass).__index
end

--�ж�һ��class���߶����Ƿ�
function IsSub(clsOrObj, Ancestor) 
	local Temp = clsOrObj
	while  1 do
		local mt = getmetatable(Temp)
		if mt then
			Temp = mt.__index
			if Temp == Ancestor then
				return true
			end
		else
			return false
		end
	end
end

--��ʱû��һ���ȽϺõķ�������ֹ��Class��table����һ��ʵ����ʹ��
--�������һ��Class��ʱ��һ��Ҫ���������ʵ����������
clsObject = {
		--���������Ƿ���һ������ or Class or ��ͨtable
		__ClassType = "<base class>"
}

clsObject.Inherit = function (self, o)	
	o = o or {}

	--û�ж�table���������������������table����Ӧ����init�����г�ʼ��
	--��Ӧ�ð�һ��table���Էŵ�class�Ķ�����
	setmetatable(o, {__index = self})

	return o
end

clsObject.New = function (self, ... )
	local o = {}

	--û�г�ʼ����������ԣ���������Ӧ����init��������ʾ��ʼ��
	--��������࣬Ӧ�����Լ���init�������ȵ��ø����init����

	setmetatable(o, {__index = self } )

	-- �����������
	o.__ObjectType="object of " .. (self.__ClassType or "<base class>")

	if o.__init__ then
		local arg = {...}
		o:__init__(unpack(arg))
	end

	o.IsClass = function(self)
		return false
	end 

	o.IsObject = function(self)
		return true
	end

	return o
end

clsObject.__init__ = function(self)
	--nothing
end

-- ������ͨTable ��Class�ã����Ǳ�ʾ��TableΪ��ԭ��
clsObject.IsClass = function (self)
	return true
end

clsObject.IsObject = function (self)
	return false
end

--[[ -- ��ʱû�ж���ɾ������
function clsObject:Destroy()
	--���ж����ͷŵ�ʱ��ɾ��callout
	CALLOUT.RemoveObjCallOut(self)
end
--]]
