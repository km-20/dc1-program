void keyPressed() {
  if (scene == -1) {
    if (key == 'a') {
      kenname = true;
    }
    if (key =='b') {
      localname = true;
    }
    if (key =='c') {
      localsp = true;
    }
  }
  
  if (scene == 0) {
    if (key =='a') {
      cnt = 0; // 始まりの問題番号
      q[cnt].isAlive = true; // 問題表示
      number = 7; // 終わりの問題番号
      startTime = millis();
      sTime = millis();
      a = true;
    }
    if (key =='b') {
      cnt = 7;
      q[cnt].isAlive = true;
      number = 14;
      startTime = millis();
      sTime = millis();
      b = true;
    }
    if (key =='c') {
      cnt = 14;
      q[cnt].isAlive = true;
      number = 23;
      startTime = millis();
      sTime = millis();
      c = true;
    }
    if (key =='d') {
      cnt = 23;
      q[cnt].isAlive = true;
      number = 30;
      startTime = millis();
      sTime = millis();
      c = true;
    }
    if (key =='e') {
      cnt = 30;
      q[cnt].isAlive = true;
      number = 39;
      startTime = millis();
      sTime = millis();
      c = true;
    }
    if (key =='f') {
      cnt = 39;
      q[cnt].isAlive = true;
      number = 47;
      startTime = millis();
      sTime = millis();
      c = true;
    }
  }

  if (localname && cnt==-1) {
    cnt = 0; // 始まりの問題番号
    q2[cnt].isAlive = true; // 問題表示
    number = 47; // 終わりの問題番号
    startTime = millis();
    sTime = millis();
  }
  
  if (localsp && cnt==-1) {
    cnt = 0; // 始まりの問題番号
    q3[cnt].isAlive = true; // 問題表示
    number = 47; // 終わりの問題番号
    startTime = millis();
    sTime = millis();
  }
  
  if (key =='1') {
    ans = 0;
    if (scene == 1) {
      q[cnt].isAlive = false; // 問題と選択肢を非表示
      q[cnt].isAnswer = true; // 答えを表示
      // 正答数カウント
      if (q[cnt].s[ans] == q[cnt].A[cnt]) {
        cntt++;
      } else {
        cntf++;
      }
    } else if (scene==2) {
      q2[cnt].isAlive = false;
      q2[cnt].isAnswer = true;
       // 正答数カウント
      if (q2[cnt].s[ans] == q2[cnt].A[cnt]) {
        cntt++;
      } else {
        cntf++;
      }
    } else if (scene==3) {
      q3[cnt].isAlive = false;
      q3[cnt].isAnswer = true;
       // 正答数カウント
      if (q3[cnt].s[ans] == q3[cnt].A[cnt]) {
        cntt++;
      } else {
        cntf++;
      }
    }
  }
  if ( key == '2') {
    ans = 1;
    if (scene == 1) {
      q[cnt].isAlive = false;
      q[cnt].isAnswer = true;
      // 正答数カウント
      if (q[cnt].s[ans] == q[cnt].A[cnt]) {
        cntt++;
      } else {
        cntf++;
      }
    } else if (scene==2) {
      q2[cnt].isAlive = false;
      q2[cnt].isAnswer = true;
       // 正答数カウント
      if (q2[cnt].s[ans] == q2[cnt].A[cnt]) {
        cntt++;
      } else {
        cntf++;
      }
    } else if (scene==3) {
      q3[cnt].isAlive = false;
      q3[cnt].isAnswer = true;
       // 正答数カウント
      if (q3[cnt].s[ans] == q3[cnt].A[cnt]) {
        cntt++;
      } else {
        cntf++;
      }
    }
  }
  if ( key == '3') {
    ans = 2;
    if (scene==1) {
      q[cnt].isAlive = false;
      q[cnt].isAnswer = true;
      // 正答数カウント
      if (q[cnt].s[ans] == q[cnt].A[cnt]) {
        cntt++;
      } else {
        cntf++;
      }
    } else if (scene==2) {
      q2[cnt].isAlive = false;
      q2[cnt].isAnswer = true;
       // 正答数カウント
      if (q2[cnt].s[ans] == q2[cnt].A[cnt]) {
        cntt++;
      } else {
        cntf++;
      }
    } else if (scene==3) {
      q3[cnt].isAlive = false;
      q3[cnt].isAnswer = true;
       // 正答数カウント
      if (q3[cnt].s[ans] == q3[cnt].A[cnt]) {
        cntt++;
      } else {
        cntf++;
      }
    }
  }
  if ( key == 'n') {
    if (scene==1) {
      q[cnt].isAnswer = false; // 答えを非表示
      plus = true; // 次の問題へいく合図
    } else if (scene==2) {
      q2[cnt].isAnswer = false; // 答えを非表示
      plus = true; // 次の問題へいく合図
    } else if (scene==3) {
      q3[cnt].isAnswer = false; // 答えを非表示
      plus = true; // 次の問題へいく合図
    }
  }

}
