dhh ��Ŀandroid���� ׼�����̣�
   ��װ���򹤾�Ŀ¼��
   \\192.168.0.251\�ϴ�ר���ļ���\dhh
   \\192.168.0.251\�ϴ�ר���ļ���\dhh\��׿������
   ����ͳ�ư�װ��Ŀ¼����׿������Ŀ¼�µİ�װ������32λ�ģ��ٷ��Ƽ�
1����װ Visual Studio 2013����ѡ��װ��
   ��װǰ��Ҫ�Ȱ�װIE11��IE11�İ�װ��Ҳ�ڸ�Ŀ¼�£���װIE11ʱ��Ҫ�򼸸�������
   ������ʾ���������غͰ�װIE11�Ĳ������ɡ�
2����װ Java SDK�����밲װ��
   ���Ƶ����ذ�װ���ɡ�
3����װAndroid ADT bundle��Android SDK�� �� Android NDK�����밲װ��
   ��ѹ�� adt-bundle-windows-x86-20130219.zip
   ��Ŀ¼ adt-bundle-windows-x86-20130219 ����Ϊ android
   ɾ��   android\sdk
   ��ѹ�� android-sdk-windows_������.7z
   ��Ŀ¼ android-sdk-windows �ƶ��� android\android-sdk-windows
   ��ѹ�� android-ndk-r9b-windows-x86.zip
   ��Ŀ¼ android-ndk-r9b �ƶ��� android\android-ndk-r9b
   ���յ�Ŀ¼�ṹΪ��
   android
   --android-ndk-r9b
   --android-sdk-windows
   --eclipse
   --SDK Manager.exe
   ��ӻ����������� ϵͳ���� -> �߼� -> ������������
       ������                     ����ֵ
   ANDROID_NDK_ROOT          android-ndk-r9bĿ¼�����磺D:\android\android-ndk-r9b��
   ANDROID_SDK_ROOT          android-sdk-windowsĿ¼�����磺D:\android\android-sdk-windows��
   QUICK_COCOS2DX_ROOT       quick-cocos2dx����Ŀ¼����������벽��1��check quick-cocos2d-rootĿ¼�����磺D:\gameplay3d_branch��
   COCOS2DX_ROOT             %QUICK_COCOS2DX_ROOT%\lib\cocos2d-x
   ANDROID_HOME              %ANDROID_SDK_ROOT%
   android                   %ANDROID_SDK_ROOT%\platform-tools
   PATH                      %QUICK_COCOS2DX_ROOT%\bin\win32;%android%����� PATH �����Ѿ����ڣ����� PATH ���������� ;%QUICK_COCOS2DX_ROOT%\bin\win32;%android%��
4����װapk�������Apache Ant�����밲װ��
   ��ѹ�� apache-ant-1.9.4.zip ��������õ��̷������磺D:\apache-ant-1.9.4��
   ��ӻ����������� ϵͳ���� -> �߼� -> ������������
       ������                     ����ֵ
      ANT_HOME               apache-ant-1.9.4��ѹ���õ�Ŀ¼�����磺D:\apache-ant-1.9.4��
      PATH                   %ANT_HOME%\bin����� PATH �����Ѿ����ڣ����� PATH ���������� ;%ANT_HOME%\bin��

5����װ��UNIXģ�⻷���������й���cygwin�����Բ���װֱ����cmd��ɣ���ѡ��װ��
   ��ѹ�� cygwin.7z ��������õ��̷������磺D:\cygwin��

----------------------------------------------------------------------------------------------------------------

dhh ��Ŀandroid���� ���벽�裺

1.check quick-cocos2d-rootĿ¼��https://192.168.0.3/qtz/mg/common/quick_cocos2dx/gameplay3d_branch��

2.check clientĿ¼��https://192.168.0.3/qtz/mg01/program/client 


3.�ÿ���̨����ȥclient/proj.androidĿ¼��ִ�� android update -p "proj.androidpath" ָ�
���У�proj.androidpath��������check������client/proj.androidĿ¼������ D:/client/proj.android.

4.˫��client/proj.android/build.batָ�(��һ���Ǳ���C++����,��������libs/armeabi/libgame.so)


����ʹ�������е�ͬѧ��ִ�����²�����

5.�ÿ���̨����ȥclient/proj.androidĿ¼��ִ��:ant debug.(��һ���Ǳ���JAVA����,������bin/dhh-debug.apk)

���ˣ�apk������ϡ���װ�ֻ����ԡ�


����ʹ��eclips��ͬѧ��ִ�����²�����
3.��eclips�У�import client/proj.android���̡�

4.��eclips�У�import gameplay_branch\lib\cocos2d-x\cocos2dx\platform\android\java ���̡�

5.��eclipst���һ� quickcocos2dx ���̣��� gameplay_branch\lib\cocos2d-x\cocos2dx\platform\android\java���̡�����properticesѡ��.
��ѡ islibrary.(��һ���ǰ�cocos2dx��java���̱��һ���⣬��dhh��java����ʹ�á�)

6.��eclipst���һ� DHH ���̣���import client/proj.android���̡�����properticesѡ��.
��quickcocos2dx���̣���Ϊdhh���̵�������

7.Ȼ�󣬱������eclips ��run���ֻ��С�

8.��װ����׿����е��ԣ���������adb logcat���е��ԣ����磺adb logcat | grep cocos

dhh��Ŀandroid���̸�����

��ģ�飺
	dhh������C++���룬���ö����ģ�飨gameplay,gaf,luasocekt,astar...��,����ÿ��ģ����Ҫ�����������ģ�鶼��һ��������android���̣�ÿ����ģ���Ŀ¼�ж�������	�ļ�(��gameplay_branch\lib\GamePlay-master\gameplay\android Ϊ��)�� 
	1.build.bat���ִ�нű��������ڱ���������ģ���.a�ļ���
	2.libgameplay.a������Ѿ�����õĸ���ģ���.a�ļ���
һ������£���ģ��Ĺ��ܶ������Ķ��������ڲֿ��϶����ύһ���Ѿ�����õ�.a�ļ����Է������������ͬѧ������ֱ��ִ������ı��벽�������������������ģ��ȥ���롣
������ĳЩ��ģ��Ĺ����иĶ�������£�

ͬ����gameplayΪ�����Ǿ�ֻ���ȵ�gameplay_branch\lib\GamePlay-master\gameplay\androidĿ¼�£�ִ��build.bat������µġ�libgameplay.a��Ȼ����ִ���������������ȥ���µ�apk����

�������һЩ��Ҫ����ģ����б�

gameplay_branch/lib/gameplay-external-deps/png/lib/android/arm
gameplay_branch/lib/qtz_component/libevent/android
gameplay_branch/lib/qtz_component/luasocket/android)			
gameplay_branch/lib/qtz_component/castar/android)			
gameplay_branch/lib/qtz_component/gafplayer/android)			
gameplay_branch/lib/gameplay-external-deps/bullet/lib/android/arm)	
gameplay_branch/lib/gameplay-external-deps/openal/lib/android/arm)	
gameplay_branch/lib/GamePlay-master/gameplay/android)	
gameplay_branch/lib/gameplay-external-deps/zlib/lib/android/arm)	
gameplay_branch/lib/gameplay-external-deps/oggvorbis/lib/android/arm)	
gameplay_branch/luaHttp/android)			
gameplay_branch/lib/qtz_component/qtz_util/android)


��ģ�飺
	��ģ����Ҫ����cocos2dx�Ĵ��룬��dhh�Ĵ��루��Ҫ��client\sources����Ĵ���,��client/proj.anroid/jni/android.mk���г���Ϊ׼����
ÿ��ִ������ĵ�4�����������������飺

1.������ģ��Ĵ��루cocos2dx, client\sources����
2.�Ѹ�����ģ���.a�ļ����ӳ� libgame.so�ļ���





