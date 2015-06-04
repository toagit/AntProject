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
set /p TARGET="テストクラスを入力してください>"
if ""==%TARGET% (
  echo テストクラスを指定してください。
  goto INPUT
)

:TEST
rem /_/_/ JUnit実行時のJAVAバージョンを変更する場合は以下を設定 /_/_/
rem set JAVACMD="C:\java\jdkx.x.x\bin\java.exe"

set ANT_DIR="C:\eclipse\plugins\org.apache.ant_x.x.x"

echo "%TARGET% テスト開始　フレームなし"
call %ANT_DIR%\bin\ant -f .\config\junitReport.xml test.dev,report -Dclass=%TARGET%

echo テストを終了しました。
pause > NUL
