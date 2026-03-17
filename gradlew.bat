@rem Gradle startup script for Windows
@if "%DEBUG%"=="" @echo off
setlocal
set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%
set DEFAULT_JVM_OPTS="-Xmx64m" "-Xms64m"
set JAVA_EXE=java.exe
if defined JAVA_HOME (
    set JAVA_EXE=%JAVA_HOME%/bin/java.exe
    if not exist "%JAVA_EXE%" goto fail
)
set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% ^
    "-Dorg.gradle.appname=%APP_BASE_NAME%" ^
    -classpath "%CLASSPATH%" ^
    org.gradle.wrapper.GradleWrapperMain %*
goto end
:fail
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
exit /b 1
:end
endlocal
