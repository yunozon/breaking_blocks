int racket_x = 200;//ラケットのｘ、ｙ座標
int racket_y = 1000;
int racket_w = 200;//ラケットの幅と高さ
int racket_h = 30;
int racket_hit = 0;//ラケットとのヒット
int block_w = 191;//ブロックの幅と高さ
int block_h = 75;
int block_x, block_y;
int block[] = new int [50];//0;ブロック非表示　１；表示
int exist = 0;//0;ブロックなし　１；ブロック存在


void GamePlay() {
  fill(255);
  rect(ball_x, ball_y, ball_w, ball_h);
  ball_x = ball_x + spdx;//ボールの移動（横）
  ball_y = ball_y + spdy;//ボールの移動（縦）
  
  //壁とボールの反射//
  if (  ball_y < 0) { //画面上に出た時
    spdy = -spdy  ;   //跳ね返す
  }
  if ( ball_y >= height ) {//画面下に出た時
    Game = 2;
  }
  if ( (ball_x < 0) || (ball_x + ball_w >= width) ) {//画面左右に出た時
    spdx = -spdx;                                    //跳ね返す　　　　
  } 
  
//ラケットとボールの反射//
  if ( (racket_hit == 0) && (racket_x < ball_x) && (racket_x + racket_w > ball_x)
    && (racket_y < ball_y) && (racket_y + racket_h > ball_y) ) {//ラケットとボールが中にめりこんで
    spdy = -spdy ;                                              //複数ひっとしないように
    racket_hit = 1;
    if ( exist == 0 ) {
      for (int i = 0; i < 50; i++) {
        block[i] = 1;//ブロック表示;
      }
    }
  }

  if ( ball_y < racket_y - 30) {
    racket_hit = 0;
  }
  
  //ラケット
  fill(255);                   
  rect(racket_x, racket_y, racket_w, racket_h);
  racket_x = mouseX;
  if ( (racket_x + racket_w) > width ) {
    racket_x = width - racket_w ;
  }
  
  //ブロック
  exist = 0;
  for (int i = 0; i < 50; i++) {
    if ( block[i] == 1 ) {
      fill(200, 256, 256);
      block_x = (i%10)*(block_w+2);
      block_y = (i/10)*(block_h+2);
      rect(block_x, block_y, block_w, block_h, 2);
      blockHitCheck(i, block_x, block_y);
      if ( block[i] == 1) {
        rect(block_x, block_y, block_w, block_h, 2);
        exist = 1;
      }
    }
  }
}
//ボールとブロックの当たり判定
void blockHitCheck(int ii, int block_x, int block_y) {
  if ( !((block_x < ball_x) && (block_x + block_w > ball_x)
    && (block_y < ball_y)&&(block_y + block_h > ball_y)) ){
      return;
  }
  block [ii] = 0;//ブロック非表示
  score += 100;//ブロック一つ消すごとにプラス１００点

//ボールがブロックの幅の中で当たったとき跳ね返す
  if ( (block_x < ball_x) && ( block_x + block_w > ball_x) ) {
    spdy = -spdy;
    return;
  }
//ボールがブロックの高さの中で当たったとき跳ね返す
  if ( (block_y < ball_y)&&(block_y + block_h > ball_y) ) {

    spdx = -spdx;
    return;
  }
  spdx = -spdx;//それ以外は左右上下の向き変更
  spdy = -spdy;
}
