String adress;
int additionNum;
float dividingNum;
String messageToYou;

void setup(){
  adress = "earth";
  additionNum  = 15+20;
  dividingNum  = 50/3;
  messageToYou = "Hello from the Moon";
  println("Adresse: " + (adress));
  println("Addition : " + additionNum);
  println("Division: " + dividingNum);
  println("Incomming message from the Moon: " + messageToYou);
  
  println("--------");
  
  //Nye værdier
  adress = "Moon";
  additionNum  = 155+22;
  dividingNum  = 61/6;
  messageToYou = "Hello from Earth";
  println("Adresse: " + (adress));
  println("Addition : " + additionNum);
  println("Division: " + dividingNum);
  println("Incomming message from Earth: " + messageToYou);
  
  println("--------");
  
  // Tilføj nye værdier uden at overskrive
  adress += ", Darkside";
  additionNum  += 27;
  dividingNum += 4;
  messageToYou += ", poop";
  println("Adresse: " + (adress));
  println("Addition : " + additionNum);
  println("Division: " + dividingNum);
  println("Incomming message from Earth: " + messageToYou);
  
  println("--------");
  
  additionNum += 1;
  dividingNum += 1;
  println(additionNum);
  println(dividingNum);
  
  println("--------");
  
  additionNum += 3;
  dividingNum += 3;
  println(additionNum);
  println(dividingNum);
  
  println("--------");
  
  additionNum -= 1;
  dividingNum -= 1;
  println(additionNum);
  println(dividingNum);
}
