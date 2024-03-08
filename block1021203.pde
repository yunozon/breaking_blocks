int Game = 0;//ゲームの流れを管理
int score = 0;//スコア
float ball_x;//ボールのｘ座標
float ball_y;//ボールのy座標
int ball_w = 30;// ballの横幅
int ball_h = 30;//ballの縦幅
float spdx;//スピードｘ方向
float spdy;//スピードｙ方向

void setup() {
  fullScreen();
  exist = 0;
  GameInit();// ゲームの初期化
  music();
}

void draw() {
  background(0);
  back_draw();
  Score();
  
 
  if ( Game == 0 ) {
    GameTitle();//ゲームタイトル画面
    score = 0;//スコアのリセット
  } else if ( Game == 1) {
    GamePlay();//プレイ中の画面
  } else {
    GameOver();//ゲームオーバー画面
  }
}
