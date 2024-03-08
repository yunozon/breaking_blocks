int count = 100;// 星の個数
float back_a[] = new float[count];
float back_b[] = new float[count];
float back_c[] = new float[count];

void back_set() {
  for (int i = 0; i < count; i++) {
    back_a[i] = random(width); //星の座標をランダムに決める
    back_b[i] = random(height);
    back_c[i] = random(1, 3);//1～３の値をとる
  }
}

void back_draw() {
  for (int i = 0; i< count; i++) {
    back_a[i]=back_a[i]+ back_c[i];//星が右に動く（ランダム）
    if ( back_a[i] > width) {
      back_a[i] = 0;
    }
    noStroke();
    float depth = back_c[i] / 3;//透明度をdepth(奥行）とおく
    fill(255, 255, 255, depth * 255);
    circle(back_a[i], back_b[i], 5);//星
  }
}
