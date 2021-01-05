Clock clk;

void setup() {
  size(600, 600);
  frameRate(2);
  initClock();
  background(BG);
  clk.draw();
}

void draw() {
  background(BG);
  clk.draw();
}

void initClock() {
  clk = new Clock(IS_12_HOUR);
  DrawableLightBoard disp = (DrawableLightBoard) clk.getDisplay();

  disp.setRowColor(0, YEAR_ACTIVE);
  disp.setRowColor(1, MONTH_ACTIVE);
  disp.setRowColor(2, DAY_ACTIVE);
  disp.setRowColor(3, HOUR_ACTIVE);
  disp.setRowColor(4, MINUTE_ACTIVE);
  disp.setRowColor(5, SECOND_ACTIVE);

  disp.setRowDisableColor(0, YEAR_INACTIVE);
  disp.setRowDisableColor(1, MONTH_INACTIVE);
  disp.setRowDisableColor(2, DAY_INACTIVE);
  disp.setRowDisableColor(3, HOUR_INACTIVE);
  disp.setRowDisableColor(4, MINUTE_INACTIVE);
  disp.setRowDisableColor(5, SECOND_INACTIVE);
  
  if (SHOW_CASIDOTS) {
    disp.setDisableColor(1, 4, YEAR_INACTIVE);
    disp.setDisableColor(1, 5, YEAR_INACTIVE);
    
    disp.setDisableColor(4, 3, HOUR_INACTIVE);
    disp.setDisableColor(5, 3, MINUTE_INACTIVE);
  }
  
  if (IS_12_HOUR) {
    disp.setDisableColor(3, 1, PM_INACTIVE);
    disp.setDisableColor(3, 3, PM_INACTIVE);
  } else {
    disp.setDisableColor(3, 2, DAY_INACTIVE);
  }
  
  
  disp.setTileHidden(1,0,true);
  disp.setTileHidden(1,1,true);
  disp.setTileHidden(2,0,true);
  disp.setTileHidden(3,0,true);
  
  if (IS_12_HOUR) {
    disp.setColor(3, 0, PM_ACTIVE);
    disp.setDisableColor(3, 0, PM_INACTIVE);
    disp.setTileHidden(3, 0, false);
  }
}
