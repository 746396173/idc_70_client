1.����MD5 
����/client/tool/shell/moduleĿ¼
python calc_md5.py --path=../../../resource/ --file=../../../resource/filelist.lua

2.��resource��������ݸ��Ƶ�assets��������

3.����nginx�����������ң���������Դ������ָ��client/resource
        location /client
        {
            alias  D:/dhh/client/resource;
            autoindex on;
        }

4.�Լ��Ŀͻ�Ŀ¼  �����ص�ַ���Լ�����������
HTTP_DOMAIN = "http://192.168.12.66:8888/client"

��� ����ÿ�ζ��ջ��ˣ����ű�����Դ�Ķ�   ֻ��Ҫִ��1������filelist,�����ֻ���������Ϸ����