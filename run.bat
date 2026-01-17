@echo off
echo ===============================
echo Compilando o projeto...
echo ===============================

javac ^
 --module-path "F:\Javafx\javafx-sdk-17.0.17\lib" ^
 --add-modules javafx.controls,javafx.fxml ^
 -d out ^
 src\main\java\org\example\Asteroids.java

IF ERRORLEVEL 1 (
    echo.
    echo ❌ Erro na compilacao.
    pause
    exit /b
)

echo.
echo ===============================
echo Executando o jogo...
echo ===============================

java ^
 --enable-native-access=javafx.graphics ^
 --module-path "F:\Javafx\javafx-sdk-17.0.17\lib" ^
 --add-modules javafx.controls,javafx.fxml ^
 -cp out ^
 org.example.Asteroids

pause
