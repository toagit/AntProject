@echo off
pushd %0\..
set TARGET=""
if "" == %1 (
  goto INPUT
) else (
  set TARGET=%1
  goto TEST
)

:INPUT
set /p TARGET="�e�X�g�N���X����͂��Ă�������>"
if ""==%TARGET% (
  echo �e�X�g�N���X���w�肵�Ă��������B
  goto INPUT
)

:TEST
rem /_/_/ JUnit���s����JAVA�o�[�W������ύX����ꍇ�͈ȉ���ݒ� /_/_/
rem set JAVACMD="C:\java\jdkx.x.x\bin\java.exe"

set ANT_DIR="C:\eclipse\plugins\org.apache.ant_x.x.x"

echo "%TARGET% �e�X�g�J�n�@�t���[���Ȃ�"
call %ANT_DIR%\bin\ant -f .\config\junitReport.xml test.dev,report -Dclass=%TARGET%

echo �e�X�g���I�����܂����B
pause > NUL
