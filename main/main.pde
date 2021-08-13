int cnt = -1; // 何番目の問題を出題するか
int ans = -1; // 何番目の選択肢が押されたか
int number; // 何番目の問題まで出題するか
int startTime; // 開始時間(ヒント表示の)
int endTime; // 経過時間(ヒント表示の)
boolean plus = false; // 次の問題へいく合図
int cntt = 0,cntf = 0;//正解不正解の数

int sTime; // ゲーム開始時刻
int eTime; // ゲーム終了時刻

Quiz[] q = new Quiz[47];
Quiz[] q2 = new Quiz[47];
Quiz[] q3 = new Quiz[47];

void setup() {
  size(800, 500);
  surface.setTitle("都道府県クイズ");
  PFont font = createFont("Meiryo", 50);
  textFont(font);
  
  //県名
  q[0] = new Quiz(false, S1, A);
  q[1] = new Quiz(false, S2, A);
  q[2] = new Quiz(false, S3, A);
  q[3] = new Quiz(false, S4, A);
  q[4] = new Quiz(false, S5, A);
  q[5] = new Quiz(false, S6, A);
  q[6] = new Quiz(false, S7, A);
  q[7] = new Quiz(false, S8, A);
  q[8] = new Quiz(false, S9, A);
  q[9] = new Quiz(false, S10, A);
  q[10] = new Quiz(false, S11, A);
  q[11] = new Quiz(false, S12, A);
  q[12] = new Quiz(false, S13, A);
  q[13] = new Quiz(false, S14, A);
  q[14] = new Quiz(false, S15, A);
  q[15] = new Quiz(false, S16, A);
  q[16] = new Quiz(false, S17, A);
  q[17] = new Quiz(false, S18, A);
  q[18] = new Quiz(false, S19, A);
  q[19] = new Quiz(false, S20, A);
  q[20] = new Quiz(false, S21, A);
  q[21] = new Quiz(false, S22, A);
  q[22] = new Quiz(false, S23, A);
  q[23] = new Quiz(false, S24, A);
  q[24] = new Quiz(false, S25, A);
  q[25] = new Quiz(false, S26, A);
  q[26] = new Quiz(false, S27, A);
  q[27] = new Quiz(false, S28, A);
  q[28] = new Quiz(false, S29, A);
  q[29] = new Quiz(false, S30, A);
  q[30] = new Quiz(false, S31, A);
  q[31] = new Quiz(false, S32, A);
  q[32] = new Quiz(false, S33, A);
  q[33] = new Quiz(false, S34, A);
  q[34] = new Quiz(false, S35, A);
  q[35] = new Quiz(false, S36, A);
  q[36] = new Quiz(false, S37, A);
  q[37] = new Quiz(false, S38, A);
  q[38] = new Quiz(false, S39, A);
  q[39] = new Quiz(false, S40, A);
  q[40] = new Quiz(false, S41, A);
  q[41] = new Quiz(false, S42, A);
  q[42] = new Quiz(false, S43, A);
  q[43] = new Quiz(false, S44, A);
  q[44] = new Quiz(false, S45, A);
  q[45] = new Quiz(false, S46, A);
  q[46] = new Quiz(false, S47, A);
  
  //県庁所在地
  q2[0] = new Quiz(false, SL1, A2);
  q2[1] = new Quiz(false, SL2, A2);
  q2[2] = new Quiz(false, SL3, A2);
  q2[3] = new Quiz(false, SL4, A2);
  q2[4] = new Quiz(false, SL5, A2);
  q2[5] = new Quiz(false, SL6, A2);
  q2[6] = new Quiz(false, SL7, A2);
  q2[7] = new Quiz(false, SL8, A2);
  q2[8] = new Quiz(false, SL9, A2);
  q2[9] = new Quiz(false, SL10, A2);
  q2[10] = new Quiz(false, SL11, A2);
  q2[11] = new Quiz(false, SL12, A2);
  q2[12] = new Quiz(false, SL13, A2);
  q2[13] = new Quiz(false, SL14, A2);
  q2[14] = new Quiz(false, SL15, A2);
  q2[15] = new Quiz(false, SL16, A2);
  q2[16] = new Quiz(false, SL17, A2);
  q2[17] = new Quiz(false, SL18, A2);
  q2[18] = new Quiz(false, SL19, A2);
  q2[19] = new Quiz(false, SL20, A2);
  q2[20] = new Quiz(false, SL21, A2);
  q2[21] = new Quiz(false, SL22, A2);
  q2[22] = new Quiz(false, SL23, A2);
  q2[23] = new Quiz(false, SL24, A2);
  q2[24] = new Quiz(false, SL25, A2);
  q2[25] = new Quiz(false, SL26, A2);
  q2[26] = new Quiz(false, SL27, A2);
  q2[27] = new Quiz(false, SL28, A2);
  q2[28] = new Quiz(false, SL29, A2);
  q2[29] = new Quiz(false, SL30, A2);
  q2[30] = new Quiz(false, SL31, A2);
  q2[31] = new Quiz(false, SL32, A2);
  q2[32] = new Quiz(false, SL33, A2);
  q2[33] = new Quiz(false, SL34, A2);
  q2[34] = new Quiz(false, SL35, A2);
  q2[35] = new Quiz(false, SL36, A2);
  q2[36] = new Quiz(false, SL37, A2);
  q2[37] = new Quiz(false, SL38, A2);
  q2[38] = new Quiz(false, SL39, A2);
  q2[39] = new Quiz(false, SL40, A2);
  q2[40] = new Quiz(false, SL41, A2);
  q2[41] = new Quiz(false, SL42, A2);
  q2[42] = new Quiz(false, SL43, A2);
  q2[43] = new Quiz(false, SL44, A2);
  q2[44] = new Quiz(false, SL45, A2);
  q2[45] = new Quiz(false, SL46, A2);
  q2[46] = new Quiz(false, SL47, A2);
  
  //名産品
  q3[0] = new Quiz(false, SS1, A3);
  q3[1] = new Quiz(false, SS2, A3);
  q3[2] = new Quiz(false, SS3, A3);
  q3[3] = new Quiz(false, SS4, A3);
  q3[4] = new Quiz(false, SS5, A3);
  q3[5] = new Quiz(false, SS6, A3);
  q3[6] = new Quiz(false, SS7, A3);
  q3[7] = new Quiz(false, SS8, A3);
  q3[8] = new Quiz(false, SS9, A3);
  q3[9] = new Quiz(false, SS10, A3);
  q3[10] = new Quiz(false, SS11, A3);
  q3[11] = new Quiz(false, SS12, A3);
  q3[12] = new Quiz(false, SS13, A3);
  q3[13] = new Quiz(false, SS14, A3);
  q3[14] = new Quiz(false, SS15, A3);
  q3[15] = new Quiz(false, SS16, A3);
  q3[16] = new Quiz(false, SS17, A3);
  q3[17] = new Quiz(false, SS18, A3);
  q3[18] = new Quiz(false, SS19, A3);
  q3[19] = new Quiz(false, SS20, A3);
  q3[20] = new Quiz(false, SS21, A3);
  q3[21] = new Quiz(false, SS22, A3);
  q3[22] = new Quiz(false, SS23, A3);
  q3[23] = new Quiz(false, SS24, A3);
  q3[24] = new Quiz(false, SS25, A3);
  q3[25] = new Quiz(false, SS26, A3);
  q3[26] = new Quiz(false, SS27, A3);
  q3[27] = new Quiz(false, SS28, A3);
  q3[28] = new Quiz(false, SS29, A3);
  q3[29] = new Quiz(false, SS30, A3);
  q3[30] = new Quiz(false, SS31, A3);
  q3[31] = new Quiz(false, SS32, A3);
  q3[32] = new Quiz(false, SS33, A3);
  q3[33] = new Quiz(false, SS34, A3);
  q3[34] = new Quiz(false, SS35, A3);
  q3[35] = new Quiz(false, SS36, A3);
  q3[36] = new Quiz(false, SS37, A3);
  q3[37] = new Quiz(false, SS38, A3);
  q3[38] = new Quiz(false, SS39, A3);
  q3[39] = new Quiz(false, SS40, A3);
  q3[40] = new Quiz(false, SS41, A3);
  q3[41] = new Quiz(false, SS42, A3);
  q3[42] = new Quiz(false, SS43, A3);
  q3[43] = new Quiz(false, SS44, A3);
  q3[44] = new Quiz(false, SS45, A3);
  q3[45] = new Quiz(false, SS46, A3);
  q3[46] = new Quiz(false, SS47, A3);

  for(int i = 0; i<47; i++){
    int j = i+1;
    ken[i] = loadImage("k"+j+".png");
    h1[i] = loadImage("h"+j+".png");
  }
  
}

void draw() {
  background(255);
  if(scene == -1){
    setup_scene();
  } else if (scene == 0) {
    start_scene();
  } else if (scene == 1) {
    game_scene(q);
  } else if(scene == 2){
    game_scene(q2);
  } else if(scene == 3){
    game_scene(q3);
  }

}

int scene = -1; //クイズの選択する画面
// スタートシーンの処理
boolean a = false;
boolean b = false;
boolean c = false;
boolean d = false;
boolean e = false;
boolean f = false;

boolean kenname = false;
boolean localname = false;
boolean localsp = false;

void setup_scene(){
  PFont font1, font2;
  font1 = createFont("Yu Gothic", 20, true);
  font2 = createFont("Yu Gothic", 30, true);
  
  int rx = 380, ry=50, tx=width/2, ty=height/5, rX=tx-rx/2;

  fill(0);
  textFont(font2);
  text("都道府県クイズ", tx-100, ty-10);
  textFont(font1);
  text("このゲームは都道府県の形から県名や県庁所在地、名産品を当てるクイズです。", tx-350, ty+20);
  text("ぜひお友達と一緒にやってみてください!", tx-200, ty+40);
  text("挑戦したい地方のキーボードを押そう！", tx-200, ty+60);
  fill(255);
  rect(rX, ty*2-ry/2, rx, ry);
  fill(0);
  textFont(font2);
  text("a.県名あてクイズ", tx-150, ty*2+10);
  fill(255);
  rect(rX, ty*3-ry/2, rx, ry);
  fill(0);
  text("b.県庁所在地あてクイズ", tx-150, ty*3+10);
  fill(255);
  rect(rX, ty*4-ry/2, rx, ry);
  fill(0);
  text("c.名産品あてクイズ", tx-150, ty*4+10);

  if(kenname){
    scene = 0;
  } else if(localname){
    scene = 2;
  } else if(localsp){
    scene = 3;
  }
}

void start_scene() {
  fill(0);
  textSize(30);
  text("挑戦したい地方のキーボードを押そう！", width/5, height/6);
  noFill();
  rect(width/5-5, height/6+60-30, 300, 35);
  text("a.北海道・東北", width/5, height/6+60);
  rect(width/5-5, height/6+120-30, 300, 35);
  text("b.関東", width/5, height/6+120);
  rect(width/5-5, height/6+180-30, 300, 35);
  text("c.中部", width/5, height/6+180);
  rect(width/5-5, height/6+240-30, 300, 35);
  text("d.近畿", width/5, height/6+240);
  rect(width/5-5, height/6+300-30, 300, 35);
  text("e.中国・四国", width/5, height/6+300);
  rect(width/5-5, height/6+360-30, 300, 35);
  text("f.九州", width/5, height/6+360);
  if (a || b || c || d || e || f) {
    scene = 1;
  }
}

// ゲームシーンの処理
void game_scene(Quiz[] q) {
  // nが押されて次の問題へいくとき
  if (plus) {
    plus = false;
    cnt++;
    if (cnt <=  number-1) {
      q[cnt].isAlive = true;
    }
    startTime = millis();
  }

  // 終了
  if (cnt == number) {
    eTime = millis();
    text("おつかれさま！", width/3, height/2);
    text("時間：" + ((eTime-sTime)/1000) + "秒", width/3, height/2+60);
    text("正解: "+ cntt + ", 不正解: " + cntf, width/3, height/2+120);
    noLoop();
  }

  // 問題呼び出し
  if (cnt <= number-1) { // 全問終わったら呼び出さない
    q[cnt].display(); // 問題呼び出し
    if (q[cnt].isAnswer) {
      q[cnt].answer(); // 答え呼び出し
    }
  } 
}
