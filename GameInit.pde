void GameInit() {
  Game = 0;
  ball_x = random(0, width-35);
  ball_y = 500;
  spdx = 4;
  spdy = 4;
  back_set();//背景
  racket_hit = 0;
  for (int i = 0; i < 50; i++) {
    block[i] = 1;//ブロック表示
  }
}
