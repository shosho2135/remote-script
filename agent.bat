#include <Keyboard.h>

void setup() {
  delay(3000);  // PC起動待機
  Keyboard.begin();

  // 100%化けないUS配列用文字列送信
  Keyboard.print("Pro Micro test123:/\\");  // ← 本命の1行
  Keyboard.end();
}

void loop() {}

