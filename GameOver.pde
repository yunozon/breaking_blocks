int m;

void GameOver() {
  GamePlay();
  textSize(100);
  fill(255, 0, 0);
  textAlign(CENTER);//真ん中基準
  text("GAME OVER", width/2, height/2);
  m = m + 1;
  if ( (m % 70) < 50 ){//　点滅
    textAlign(CENTER);//真ん中を基準
    textSize(50);
    fill(#F7FF90);
    text("Click to retry", width/2, 3*height/4);
  }
}
