HashMap<String, Integer> weaponDMG = new HashMap<String, Integer>();

PImage sword, wand, gun, nuke;

void setup() {
    weaponDMG.put("sword", 10);
    weaponDMG.put("wand", 15);
    weaponDMG.put("gun", 20);
    weaponDMG.put("nuke", 50);
    
    sword = loadImage("Sword.png");
    wand = loadImage("Wand.png");
    gun = loadImage("Gun.png");
    nuke = loadImage("Nuke.png");
    
    size(1000, 1000);
    
    surface.setLocation(
       (displayWidth - width) / 2,
       (displayHeight - height) / 2
       );
    
}

void draw() {
    
    boolean checkText = false;
    String hoverWeapon;
    
    if (checkText == false) {
        checkText = true;
        image(sword, 20, 20);
        image(wand, width / 2 + 20, 20);
        image(gun, 20, height / 2 + 20);
        image(nuke, width / 2 + 20, height / 2 + 20);   
    }
    
    if (mouseX < width/2 && mouseY < height/2) {
        hoverWeapon = "sword";
    } else if (mouseX > width/2 && mouseY < height/2){
        hoverWeapon = "wand";
    } else if (mouseX < width/2 && mouseY > height/2){
        hoverWeapon = "gun";
    } else {
        hoverWeapon = "nuke";
    }
    
    
}



