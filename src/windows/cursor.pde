void cursorInit() {
  cursor=cursorPencil;
  cursor(cursor,4,4);
}
void cursorCheckHand() {
  if (handbool!=_handbool) {
    if (handbool) {
      cursor(HAND);
    } else {
      cursor(cursor,4,4);
    }
  }
}