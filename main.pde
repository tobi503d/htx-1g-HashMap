HashMap<String, Integer> weaponDMG = new HashMap<String, Integer>();
HashMap<String, weaponTypes> weaponType = new HashMap<String, weaponTypes>();

enum weaponTypes {
    melee,
    ranged
}

PImage sword, wand, gun, nuke;

boolean checkText = false;
String hoverWeapon;
String hoverWeapon2;

void setup() {
    weaponDMG.put("sword", 10);
    weaponDMG.put("wand", 15);
    weaponDMG.put("gun", 20);
    weaponDMG.put("nuke", 50);
    
    weaponType.put("sword", weaponTypes.melee);
    weaponType.put("wand", weaponTypes.ranged);
    weaponType.put("gun", weaponTypes.ranged);
    weaponType.put("nuke", weaponTypes.melee);
    
    sword = loadImage("Sword.png");
    wand = loadImage("Wand.png");
    gun = loadImage("Gun.png");
    nuke = loadImage("Nuke.png");
    
    size(1000, 1000);
    
    surface.setLocation(
       (displayWidth - width) / 2,
       (displayHeight - height) / 2
       );
    
    textAlign(CENTER, CENTER);
    textSize(48);
    fill(0, 0, 0);
}

void draw() {
    
    hoverWeapon2 = hoverWeapon;
    
    
    
    if (mouseX < width / 2 && mouseY < height / 2) {
        hoverWeapon = "sword";
    } else if (mouseX > width / 2 && mouseY < height / 2) {
        hoverWeapon = "wand";
    } else if (mouseX < width / 2 && mouseY > height / 2) {
        hoverWeapon = "gun";
    } else {
        hoverWeapon = "nuke";
    }
    if (hoverWeapon2 != hoverWeapon) {
        checkText = false;
    }
    
    if (checkText == false) {
        checkText = true;
        render();
        
    }
}

void render() {
    background(255, 255, 255);
    image(sword, 20, 20);
    image(wand, width / 2 + 20, 20);
    image(gun, 20, height / 2 + 20);
    image(nuke, width / 2 + 20, height / 2 + 20);
    
    
    
    text(weaponDMG.get(hoverWeapon)+"\n"+weaponType.get(hoverWeapon), width / 2, height / 2);
}