import ddf.minim.*;  //minimライブラリのインポート

Minim minim;  //Minim型変数であるminimの宣言
AudioPlayer player1;  //サウンドデータ格納用の変数
AudioPlayer player2;

void music(){
  minim = new Minim(this);  //初期化
  // https://www.hurtrecord.com/bgm/39/uchuu-hachimoku.htmlからダウンロード
  player1 = minim.loadFile("/data/uchuu-hachimoku.mp3");  //uchuu-hachimoku.mp3をロードする
  player1.loop();
}
