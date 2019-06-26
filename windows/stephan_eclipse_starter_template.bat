@echo off
SET JAVA_VERSION=9.0.1
SET JAVA_HOME=C:\app\Java\jdk-%JAVA_VERSION%
SET ECLIPSE_VERSION=2019-03-R


SET ECLIPSE_HOME=C:\Developing\Eclipse\%ECLIPSE_VERSION%\eclipse
SET PATH=%JAVA_HOME%\bin;%PATH%
SET CODEPATH="C:\Users\Stephan user\Documents\GitHub\Verteilte_Systeme_RMI"

echo "Running Eclipse %ECLIPSE_VERSION% with java jdk-%JAVA_VERSION% in: %JAVA_HOME%"
echo "Working dir is: %CODEPATH%"
pause
@start %ECLIPSE_HOME%\eclipse.exe -data %CODEPATH% -vm %JAVA_HOME%\bin\javaw -vmargs -Dfile.encoding=UTF-8 -Xms128m -Xmx3072m -XX:MaxHeapSize=768m -XX:MaxPermSize=512m
