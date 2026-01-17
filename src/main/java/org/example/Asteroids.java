
package org.example;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.Border;
import javafx.scene.layout.BorderPane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Circle;
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
    public void start(Stage mainStage) {
        mainStage.setTitle("Asteroids");
        BorderPane root = new BorderPane();

        Circle circle = new Circle(50); // Radius 50
        circle.setFill(Color.BLUE);

        root.setCenter(circle);

        Scene mainScene = new Scene(root, 800, 600, Color.BLACK);
        mainStage.setScene(mainScene);
        mainStage.show();
    }
}