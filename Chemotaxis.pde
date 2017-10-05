//declare bacteria variables here
ArrayList<Bacteria> colony;
int bubble = 8;
void setup()
{
  //initialize bacteria variables here
  size(300, 300);
  frameRate(40);
  colony = new ArrayList<Bacteria>();
  for (int i= 0; i < bubble; i++)
  {
    colony.add(new Bacteria());
  }
}
void draw()
{
  //move and show the bacteria
  background(255);

  for (int i= 0; i < colony.size(); i++) 
  {
    Bacteria gold = colony.get(i);
    gold.show();
    gold.walk();
  }
}



class Bacteria
{
  //lots of java!
  int theX, theY;
  Bacteria() 
  {
    theX = 250;
    theY = 250;
    color(255);

  }
  void walk() 
  {
      if (theX < mouseX){
              theX+= (int)(Math.random() * 11) - 4;
       
      }else{
      
        theX+= (int)(Math.random() * 11) - 6;
      }
      if (theY < mouseY){
        theY+= (int)(Math.random() * 11) - 4;
      }else{
        theY+= (int)(Math.random() * 11) - 6;
      } 
  }
    void show() {
      fill(255);
      ellipse(theX % 500, theY % 500, 10, 10);
    }
  }