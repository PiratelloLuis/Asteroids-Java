@echo off
echo ===============================
echo Cleaning and Compiling...
echo ===============================

:: Delete old classes to ensure a fresh build
if exist out rmdir /s /q out
mkdir out

javac ^
 --module-path "D:\javafx-sdk-17.0.17\lib" ^
 --add-modules javafx.controls,javafx.fxml ^
 -d out ^
 src\main\java\org\example\Asteroids.java

IF ERRORLEVEL 1 (
    echo.
    echo ❌ Compilation Error. Check your code!
    pause
    exit /b
)

echo.
echo ===============================
echo Running Asteroids...
echo ===============================

java ^
 --module-path "D:\javafx-sdk-17.0.17\lib" ^
 --add-modules javafx.controls,javafx.fxml ^
 -cp out ^
 org.example.Asteroids

pause
