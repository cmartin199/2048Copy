//all libraries imported into the system
import java.util.*;
import java.util.Random;
     


//only array in the system.
int[][] gameArray = new int [5][5];

String direction = "noth";
//class for all blocks needed in the system
public class NumberBlocks{
  public void NewBlock(){
    int locX = (int)(Math.round(Math.random()* 4));
    int locY = (int)(Math.round(Math.random()* 4));
    //ensures the system will always add a new block when there is space remaining
    while (gameArray[locX][locY] != 0){
      locX = (int)(Math.round(Math.random()* 4));
      locY = (int)(Math.round(Math.random()* 4));
    }
    if (gameArray[locX][locY] == 0){
      gameArray[locX][locY] = 2;
      fill(200, 0, 0);
      rect(100+ ((locX)* 100), 100 + ((locY)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(80);
      text("2", 130+ ((locX)* 100), 180 + ((locY)* 100));
    }
  }
  
  public void OldPositions(int i, int j){
    if (gameArray[i][j] == 2){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(80);
      text("2", 130+ ((i)* 100), 180 + ((j)* 100));
    }
    if (gameArray[i][j] == 4){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(80);
      text("4", 130+ ((i)* 100), 180 + ((j)* 100));
    }
    if (gameArray[i][j] == 8){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(80);
      text("8", 130+ ((i)* 100), 180 + ((j)* 100));
    }
    if (gameArray[i][j] == 16){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(80);
      text("16", 105 + ((i)* 100), 180 + ((j)* 100));
    }
    if (gameArray[i][j] == 32){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(80);
      text("32", 105 + ((i)* 100), 180 + ((j)* 100));
    }
    if (gameArray[i][j] == 64){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(80);
      text("64", 105 + ((i)* 100), 180 + ((j)* 100));
    }
    if (gameArray[i][j] == 128){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(50);
      text("128", 105 + ((i)* 100), 180 + ((j)* 100));
    }
    if (gameArray[i][j] == 256){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(50);
      text("256", 105 + ((i)* 100), 180 + ((j)* 100));
    }
    if (gameArray[i][j] == 512){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(50);
      text("512", 105 + ((i)* 100), 180 + ((j)* 100));
    }
    if (gameArray[i][j] == 1024){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(40);
      text("1024", 105 + ((i)* 100), 180 + ((j)* 100));
    }
    if (gameArray[i][j] == 2048){
      fill(200, 0, 0);
      rect(100+ ((i)* 100), 100 + ((j)* 100), 100, 100);
      fill(0, 0, 255);
      textSize(40);
      text("2048", 105 + ((i)* 100), 180 + ((j)* 100));
    }
  }
  
  //creating the protocol to move and replace blocks
  public void NewPositions(){
    if(direction == "west"){
      for(int x = 0; x<=5; x++){
          
        for(int i= 0; i<=3;){
          for(int j = 0; j<=4;){
            int tempVal= gameArray[i][j];
            if (gameArray[i+ 1][j] == tempVal){
              gameArray[i+1][j]= 0;
              gameArray[i][j] = tempVal*2;

            }
            else if(gameArray[i][j] == 0 && i< 4){
              if(gameArray[i+1][j] != 0){
                gameArray[i][j] = gameArray[i+1][j];
                gameArray[i+1][j] = 0;
              }
                
            }
            j++;
          }
        i++;
        }
      }  
    }
    if(direction == "east"){
      for(int x = 0; x<=5; x++){
          
        for(int i= 4; i> 0;){
          for(int j = 0; j<=4;){
            int tempVal= gameArray[i][j];
            if (gameArray[i-1][j] == tempVal){
              gameArray[i-1][j]= 0;
              gameArray[i][j] = tempVal*2;

            }
            else if(gameArray[i][j] == 0 && i> 0){
              if(gameArray[i- 1][j] != 0){
                gameArray[i][j] = gameArray[i-1][j];
                gameArray[i-1][j] = 0;
              }
                
            }
            j++;
          }
        i--;
        }
      }  
    }
    if(direction == "south"){
      for(int x = 0; x<=5; x++){
          
        for(int i= 0; i<=4;){
          for(int j = 4; j> 0;){
            int tempVal= gameArray[i][j];
            if (gameArray[i][j- 1] == tempVal){
              gameArray[i][j-1]= 0;
              gameArray[i][j] = tempVal*2;

            }
            else if(gameArray[i][j] == 0 && j> 0){
              if(gameArray[i][j- 1] != 0){
                gameArray[i][j] = gameArray[i][j-1];
                gameArray[i][j-1] = 0;
              }
                
            }
            j--;
          }
        i++;
        }
      }  
    }
    if(direction == "north"){
      for(int x = 0; x<=5; x++){
          
        for(int i= 0; i<=4;){
          for(int j = 0; j<=3;){
            int tempVal= gameArray[i][j];
            if (gameArray[i][j+ 1] == tempVal){
              gameArray[i][j +1]= 0;
              gameArray[i][j] = tempVal*2;

            }
            else if(gameArray[i][j] == 0 && j< 4){
              if(gameArray[i][j+1] != 0){
                gameArray[i][j] = gameArray[i][j+1];
                gameArray[i][j+1] = 0;
              }
                
            }
            j++;
          }
        i++;
        }
      }  
    }

  }
}
      
//creates the game window and game display
void setup(){
  size(700, 700);
  rect(100, 100, 500, 500);
  for(int i= 0; i<= 400; i+= 100){
    for(int j= 0; j<= 400; j+= 100){
      fill(200,200,200);
      rect(100 + i, 100 + j, 100, 100);
    }
  }
  
  NumberBlocks genGameObj = new NumberBlocks();
  genGameObj.NewBlock();
}

void draw(){
  //System.out.println(direction);
  //re-creates the game grid
  size(700, 700);
  rect(100, 100, 500, 500);
  for(int i= 0; i<= 400; i+= 100){
    for(int j= 0; j<= 400; j+= 100){
      fill(200,200,200);
      rect(100 + i, 100 + j, 100, 100); 
    }
  }

  // retains the block positions    
  for(int i = 0; i <=4;){
    for(int j = 0; j<=4;){
      NumberBlocks genGameObj = new NumberBlocks();
      genGameObj.OldPositions(i, j);      
      j++;
    }
    i++;
  }

}
public void mousePressed(){
  if (mouseY < 100){
    direction = "north";
    NumberBlocks GameObj = new NumberBlocks();
    GameObj.NewPositions();    
    direction = "";
    
    NumberBlocks genGameObj = new NumberBlocks();
    genGameObj.NewBlock();
  }
  else if (mouseY> 600){
    direction = "south";
    NumberBlocks GameObj = new NumberBlocks();
    GameObj.NewPositions();    
    direction = "";
    
    NumberBlocks genGameObj = new NumberBlocks();
    genGameObj.NewBlock();
  }
  else if (mouseX< 100){
    direction = "west";
    NumberBlocks GameObj = new NumberBlocks();
    GameObj.NewPositions();    
    direction = "";
    
    NumberBlocks genGameObj = new NumberBlocks();
    genGameObj.NewBlock();
  }
  else if (mouseX > 600){
    direction = "east";
    NumberBlocks GameObj = new NumberBlocks();
    GameObj.NewPositions();
    direction = "";
    
    NumberBlocks genGameObj = new NumberBlocks();
    genGameObj.NewBlock();
  }
}