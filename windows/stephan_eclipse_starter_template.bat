@echo off
::========================== CONFIGURABLE VARIABLES
::Set the java version to be used 
SET JAVA_VERSION=9.0.1

::set the path to your java version, depending on $JAVA_VERSION. 
::You might also just set the path to java "hardcoded" without using $JAVA_VERSION instead.
SET JAVA_HOME=C:\app\Java\jdk-%JAVA_VERSION%

::Specify your Eclipse Version to be used
SET ECLIPSE_VERSION=2019-03-R

::Specify the location of your Eclipse Homedirektory, depending on $ECLIPSE_VERSION
::You might also just set the path to eclipse "hardcoded" without using $ECLIPSE_VERSION instead.
SET ECLIPSE_HOME=C:\Developing\Eclipse\%ECLIPSE_VERSION%\eclipse

::Specify your working directory for eclipse.
SET CODEPATH="C:\Users\Stephan user\Documents\GitHub\Verteilte_Systeme_RMI"


::========================== END CONFIGURABLE VARIABLES


SET PATH=%JAVA_HOME%\bin;%PATH%

echo "Running Eclipse %ECLIPSE_VERSION% with java jdk-%JAVA_VERSION% in: %JAVA_HOME%"
echo "Working dir is: %CODEPATH%"
pause
@start %ECLIPSE_HOME%\eclipse.exe -data %CODEPATH% -vm %JAVA_HOME%\bin\javaw -vmargs -Dfile.encoding=UTF-8 -Xms128m -Xmx3072m -XX:MaxHeapSize=768m -XX:MaxPermSize=512m
