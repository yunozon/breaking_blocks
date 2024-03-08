int n ;

//タイトル画面の表示
void GameTitle() {
  if (Game == 0) {
    n = n + 1;
    if ( (n%70) < 50 ) {//GAME STARTの文字を点滅
      fill(255, 0, 0);
      textAlign(CENTER);
      textSize(100);
      text("GAME START", width/2, height/2);
    }
  }
}

void mousePressed() {
  if ( Game == 0) {
    Game = 1;// クリックするとプレイ画面になる
  }
  if ( Game== 2) {
    GameInit();//クリックするとゲーム画面に戻る
    return;
  }
}
