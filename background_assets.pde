class BackgroundAssets {
  // Variables
  float backTreeSpacing = 52; // How far apart they are in pixels
  float backTreeQuantity;
  float foregroundSpacing = 500;
  float foregroundQuantity;
  float middlegroundSpacing = 400;
  float middlegroundQuantity;
  
  BackgroundAssets(float tempBackTreeQuantity, int tempBattleStartParallaxSwitch, int tempForegroundQuantity, int tempMiddlegroundQuantity) {
    backTreeQuantity = tempBackTreeQuantity;
    battleStartParallaxSwitch = tempBattleStartParallaxSwitch;
    foregroundQuantity = tempForegroundQuantity;
    middlegroundQuantity = tempMiddlegroundQuantity;
  }
  
void displayBackTrees() {
  frameRate(60);
  float backParallax = frameCount*-0.15 % 52; // This variable needs to be here so it's constantly updated
  // Back Trees
  fill(#5e6669);
  noStroke();
  beginShape();
  vertex(20 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 52);
  vertex(20 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 83);
  vertex(16 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 87);
  vertex(36 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 87);
  vertex(32 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 83);
  vertex(32 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 52);
  endShape(CLOSE);
  fill(#486364);
  noStroke();
  beginShape();
  vertex(0 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 0);
  vertex(0 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 52);
  vertex(52 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 52);
  vertex(52 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 0);
  endShape(CLOSE);
  circle (12 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 41, 30);
  circle (40 + (backTreeQuantity * backTreeSpacing) + (backParallax * battleStartParallaxSwitch), 41, 30);
}

  void displayMiddleground ()  {
    frameRate(60);
    float middleParallax = frameCount*-0.3 % 400; // This variable needs to be here so it's constantly updated
    
    // Tree #1
    // Shadow Leaves
    fill(#407766);
    noStroke();
    circle(45 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -2, 30);
    circle(56 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 12, 40);
    circle(86 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 18, 46);
    circle(116 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 12, 56);
    circle(149 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 17, 60);
    circle(180 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 12, 50);
    // Trunk
    fill(#7f8784);
    noStroke();
    beginShape();
    vertex(75 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 23);
    vertex(100 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 37);
    vertex(102 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 62);
    vertex(103 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 84);
    vertex(97 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 93);
    vertex(88 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 100);
    vertex(148 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 100);
    vertex(140 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 94);
    vertex(133 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 85);
    vertex(129 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 40);
    vertex(145 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 24);
    vertex(141 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 18);
    vertex(122 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 33);
    vertex(119 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 14);
    vertex(108 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 14);
    vertex(111 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 32);
    vertex(108 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 32);
    vertex(86 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 20);
    endShape(CLOSE);
    // Shadow
    fill(#52605b, 70);
    noStroke();
    beginShape();
    vertex(75 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 23);
    vertex(100 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 37);
    vertex(102 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 62);
    vertex(103 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 84);
    vertex(97 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 93);
    vertex(88 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 100);
    vertex(113 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 100);
    vertex(111 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 32);
    vertex(108 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 32);
    vertex(86 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 20);
    endShape(CLOSE);
    // Covering Leaves
    fill(#407766);
    noStroke();
    circle(116 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -4, 55);
    circle(146 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -12, 70);
    // Light Leaves
    fill(#599379);
    noStroke();
    circle(70 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -11, 46);
    circle(96 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -13, 40);
    circle(116 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -4, 46);
    circle(146 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -12, 60);
    circle(176 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -1, 45);
    
    // Tree #2
    // Shadow Leaves
    fill(#407766);
    noStroke();
    circle(45 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -2, 30);
    circle(56 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 12, 40);
    circle(86 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 18, 46);
    circle(116 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 12, 56);
    circle(149 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 17, 60);
    circle(180 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 12, 50);
    // Trunk
    fill(#7f8784);
    noStroke();
    beginShape();
    vertex(75 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 23);
    vertex(100 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 37);
    vertex(102 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 62);
    vertex(103 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 84);
    vertex(97 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 93);
    vertex(88 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 100);
    vertex(148 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 100);
    vertex(140 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 94);
    vertex(133 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 85);
    vertex(129 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 40);
    vertex(145 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 24);
    vertex(141 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 18);
    vertex(122 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 33);
    vertex(119 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 14);
    vertex(108 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 14);
    vertex(111 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 32);
    vertex(108 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 32);
    vertex(86 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 20);
    endShape(CLOSE);
    // Shadow
    fill(#52605b, 70);
    noStroke();
    beginShape();
    vertex(75 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 23);
    vertex(100 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 37);
    vertex(102 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 62);
    vertex(103 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 84);
    vertex(97 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 93);
    vertex(88 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 100);
    vertex(113 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 100);
    vertex(111 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 32);
    vertex(108 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 32);
    vertex(86 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 20);
    endShape(CLOSE);
    // Covering Leaves
    fill(#407766);
    noStroke();
    circle(116 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -4, 55);
    circle(146 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -12, 70);
    // Light Leaves
    fill(#599379);
    noStroke();
    circle(70 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -11, 46);
    circle(96 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -13, 40);
    circle(116 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -4, 46);
    circle(146 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -12, 60);
    circle(176 + (200) + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), -1, 45);
    
    // Grass
    fill(#55834E);
    noStroke();
    beginShape();
    vertex(4 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 89);
    vertex(0 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(5 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);  
    beginShape();
    vertex(25 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 90);
    vertex(30 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(37 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(40 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 89);
    vertex(35 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 96);
    vertex(33 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 83);
    vertex(32 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 97);
    endShape(CLOSE);  
    beginShape();
    vertex(53 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 89);
    vertex(58 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(70 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(74 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 89);
    vertex(66 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 97);
    vertex(62 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 82);
    vertex(61 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 97);
    endShape(CLOSE);  
    beginShape();
    vertex(94 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 83);
    vertex(97 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(103 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);  
    beginShape();
    vertex(106 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 89);
    vertex(107 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(118 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(114 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 93);
    vertex(112 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 99);
    endShape(CLOSE);  
    beginShape();
    vertex(128 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 93);
    vertex(128 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(132 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);  
    beginShape();
    vertex(136 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 95);
    vertex(134 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(137 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);  
    beginShape();
    vertex(154 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 90);
    vertex(155 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(169 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(167 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 90);
    vertex(163 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 99);
    vertex(160 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 83);
    vertex(158 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 99);
    endShape(CLOSE);  
    beginShape();
    vertex(173 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(178 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(179 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 89);
    endShape(CLOSE);  
    beginShape();
    vertex(215 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 90);
    vertex(220 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(235 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(233 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 83);
    vertex(230 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 97);
    vertex(224 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 87);
    vertex(224 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 98);
    endShape(CLOSE);  
    beginShape();
    vertex(257 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 91);
    vertex(257 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(261 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);  
    beginShape();
    vertex(266 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 88);
    vertex(264 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(268 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);  
    beginShape();
    vertex(280 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 89);
    vertex(276 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(280 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);  
    beginShape();
    vertex(287 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 92);
    vertex(284 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(287 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);  
    beginShape();
    vertex(295 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 92);
    vertex(301 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(312 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(314 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 89);
    vertex(308 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 97);
    vertex(307 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 86);
    vertex(303 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 97);
    endShape(CLOSE);  
    beginShape();
    vertex(323 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 88);
    vertex(318 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(325 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(329 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 90);
    vertex(323 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 97);
    endShape(CLOSE);  
    beginShape();
    vertex(338 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 92);
    vertex(338 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(341 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);  
    beginShape();
    vertex(348 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 89);
    vertex(344 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(349 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);
    beginShape();
    vertex(357 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 92);
    vertex(354 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(358 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);
    beginShape();
    vertex(94 + 275 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 83);
    vertex(97 + 275 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(103 + 275 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    endShape(CLOSE);
    beginShape();
    vertex(106 + 275 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 89);
    vertex(107 + 275 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(118 + 275 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 101);
    vertex(114 + 275 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 93);
    vertex(112 + 275 + (middlegroundQuantity * middlegroundSpacing) + (middleParallax * battleStartParallaxSwitch), 99);
    endShape(CLOSE);
  }
  
  void displayForeground() {
    frameRate(60);
    float foreParallax = frameCount*-0.6 % 500; // This variable needs to be here so it's constantly updated
    // Leaves that stuck out
    fill(#293f23);
    noStroke();
    beginShape();
    circle(0 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 0, 25);
    // Grass left to right
    fill(#5a6f42);
    noStroke();
    beginShape();
    vertex(-2 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 129);
    vertex(-1 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 152);
    vertex(6 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    endShape(CLOSE);
    beginShape();
    vertex(10 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 131);
    vertex(12 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 150);
    vertex(32 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 150);
    vertex(21 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 117);
    vertex(18 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 142);
    endShape(CLOSE);
    beginShape();
    vertex(38 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 130);
    vertex(40 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(47 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    endShape(CLOSE);
    beginShape();
    vertex(48 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 132);
    vertex(60 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 137);
    vertex(69 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 146);
    vertex(73 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 159);
    vertex(84 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 143);
    vertex(98 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 140);
    vertex(105 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 141);
    vertex(97 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 136);
    vertex(89 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 135);
    vertex(81 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 139);
    vertex(74 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 144);
    vertex(71 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 140);
    vertex(63 + (10) + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 133);
    endShape(CLOSE);
    beginShape();
    vertex(137 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 134);
    vertex(140 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(147 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    endShape(CLOSE);
    beginShape();
    vertex(168 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 111);
    vertex(155 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(178 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(179 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 134);
    vertex(171 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 145);
    endShape(CLOSE);
    beginShape();
    vertex(202 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 132);
    vertex(203 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(210 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    endShape(CLOSE);
    beginShape();
    vertex(202 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 137);
    vertex(203 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(210 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    endShape(CLOSE);
    beginShape();
    vertex(217 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 129);
    vertex(216 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(224 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(230 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 138);
    vertex(222 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 147);
    endShape(CLOSE);
    beginShape();
    vertex(249 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 117);
    vertex(246 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(266 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(263 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 135);
    vertex(259 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 145);
    endShape(CLOSE);
    beginShape();
    vertex(270 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 149);
    vertex(287 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 144);
    vertex(294 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 146);
    vertex(300 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 152);
    vertex(306 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 152);
    vertex(309 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 148);
    vertex(327 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 143);
    vertex(337 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 145);
    vertex(325 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 136);
    vertex(315 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 138);
    vertex(303 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 146);
    vertex(293 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 138);
    vertex(284 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 137);
    endShape(CLOSE);
    beginShape();
    vertex(444 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 127);
    vertex(437 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    vertex(446 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 151);
    endShape(CLOSE);
    beginShape();
    vertex(473 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 122);
    vertex(465 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 150);
    vertex(474 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 150);
    endShape(CLOSE);
    // Tree Leaves
    fill(#293f23);
    noStroke();
    circle(280 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), -2, 60);
    circle(298 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 20, 30);
    circle(316 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 14, 50);
    circle(342 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 21, 40);
    circle(408 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 10, 60);
    circle(433 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 16, 40);
    circle(445 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 5, 50);
    circle(468 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 7, 36);
    circle(488 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 8, 24);
    circle(500 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 0, 25);
    beginShape();
    vertex(294 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), -4);
    vertex(294 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 29);
    vertex(440 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 29);
    vertex(440 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), -4);
    endShape(CLOSE);
    // Tree Trunk
    fill(#3a422b);
    noStroke();
    beginShape();
    vertex(308 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 0);
    vertex(344 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 23);
    vertex(353 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 35);
    vertex(357 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 71);
    vertex(357 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 106);
    vertex(349 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 128);
    vertex(338 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 141);
    vertex(322 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 150);
    vertex(430 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 150);
    vertex(418 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 143);
    vertex(408 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 133);
    vertex(401 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 102);
    vertex(402 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 58);
    vertex(403 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 33);
    vertex(426 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 0);
    vertex(407 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 0);
    vertex(391 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 28);
    vertex(392 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 0);
    vertex(371 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 0);
    vertex(368 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 25);
    vertex(359 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 13);
    vertex(341 + (foregroundQuantity * foregroundSpacing) + (foreParallax * battleStartParallaxSwitch), 0);
    endShape(CLOSE);
  }

}
