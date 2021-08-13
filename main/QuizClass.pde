class Quiz {
  int x[] = {0, 300, 600}, y = height/4*3, w = 200, h = 100; // 選択肢の位置
  boolean isAlive; // 問題を表示するか(コンストラクタで初期化)
  boolean isAnswer = false; // 答えを表示するか
  String s[]; // 選択肢（コンストラクタで初期化）
  String A[];

  Quiz(boolean a, String[] s0, String[] A0) {
    isAlive = a; // 問題を表示するか
    s = s0; // 選択肢
    A = A0; //答え
  }

  void display() {
    // isAlive = trueのとき問題、選択肢を表示
    if (isAlive) {
      // 問題文
      fill(0);
      //text(Q[cnt], width/4, height/2);
      image(ken[cnt], width/3, height/7, 300, 300);

      // 選択肢
      for (int i = 0; i < 3; i++) {
        fill(255);
        rect(x[i], y, w, h);
        fill(0);
        textSize(25);
        text(i+1+s[i], x[i], y+70);
      }
      endTime = millis();
      if (endTime - startTime >= 3000) {
        fill(0);
        image(h1[cnt], 0, height/7, 200, 200);
      }
      if (endTime - startTime >= 6000 && localsp==false ) {
        text(h2[cnt], 500, 80);
      }
    }
  }

  void answer() {
    // isAnswer = trueのとき答えを表示
    if (isAnswer) {
      // 正解のとき
      if (s[ans] == A[cnt]) {
        fill(255, 0, 0);
        text("正解!", width/2, height/2);
      } else {
        // 不正解のとき
        fill(0, 0, 255);
        text("残念。不正解、、", width/2, height/2);
        text("正解は"+A[cnt], width/2, height/2+80);
      }
      // 次の問題へ
      fill(255);
      rect(width/3, height/3*2, 350, 100);
      fill(0);
      text("つぎへ(nキーを押してね)", width/3, height/3*2+80);
    }
  }
}
