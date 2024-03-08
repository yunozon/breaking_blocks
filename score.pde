void Score(){
  if( Game == 2){
    textSize(50);
    fill(0, 0, 256);
    textAlign(CENTER);//真ん中を基準
    text("score:" +score, width/2, 3*height/4 -150);//スコア表示
  }
}
