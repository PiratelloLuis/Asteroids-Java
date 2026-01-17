
package org.example;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.Border;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class Asteroids extends Application
{
    public static void main(String args[]){


        try{
            launch(args);
        } catch (Exception error) {
            error.printStackTrace();
        }
        finally {
            System.exit(0);
        }
    }

    @Override
    public void start(Stage mainStage){
        mainStage.setTitle("Asteroids");
        BorderPane root = new BorderPane();
        Scene mainScene = new Scene(root);



        mainStage.show();
    }
}