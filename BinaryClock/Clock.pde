class Clock {
  private LightBoard disp;
  private color oldAm;
  private boolean is12Hour;
  
  public Clock() {
    this(false);
  }
  
  public Clock(LightBoard display) {
    this(display, false);
  }
  
  public Clock(boolean is12Hour) {
    this(new LightBoard(6,6), is12Hour);
    this.disp.setRowColor(0, color(255));
    this.disp.setRowColor(1, color(255));
    this.disp.setRowColor(2, color(255));
    this.disp.setRowColor(3, color(255));
    this.disp.setRowColor(4, color(255));
    this.disp.setRowColor(5, color(255));
  }
  
  public Clock(LightBoard display, boolean is12Hour) {
    this.disp = display;
    this.oldAm = display.getDisableColor(3, 2);
    this.is12Hour = is12Hour;
  }
  
  private void refreshClock() {
    setRowBinary(0, year() % 100);
    setRowBinary(1, month());
    setRowBinary(2, day());
    if (this.is12Hour) {
      int hour = hour();
      int hmod = hour % 12;
      setRowBinary(3, hmod == 0 ? 12 : hmod);
      
      color casiColor = this.oldAm;
      if (hour >= 12) {
        this.disp.setState(3, 0, true);
        casiColor = this.disp.getDisableColor(2, 0);
      }
      else {
        this.disp.setState(3, 0, false);
        casiColor = this.oldAm;
      }
      disp.setDisableColor(3, 1, casiColor);
      disp.setDisableColor(3, 3, casiColor);
    } else {
      setRowBinary(3, hour());
    }
    setRowBinary(4, minute());
    setRowBinary(5, second());
  }
  
  private void setRowBinary(int row, int value) {
    String rowBinaryRaw = binary(value);
    String rowBinary = rowBinaryRaw
      .substring(rowBinaryRaw.length() - this.disp.getColumnCount());
    int rBPos = 0;
    for (int c = 0; c < this.disp.getColumnCount(); c++) {
      boolean cellState = rowBinary.charAt(rBPos) == 49;
      this.disp.setState(row, c, cellState);
      rBPos++;
    }
  }
  
  public LightBoard getDisplayBoard() {
    return this.disp;
  }
  
  public void draw() {
    this.refreshClock();
    this.disp.draw();
  }
}
