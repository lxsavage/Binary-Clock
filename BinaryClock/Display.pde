/**
 * For each pixel in the Display, there is a color and a boolean
 * state of whether the pixel is on or off.
 */
interface Display {
  public void setState(int row, int column, boolean state);
  public void setRowColor(int row, color newColor);
  public void setRowDisableColor(int row, color newColor);
  public void setColor(int row, int column, color newColor);
  public void setDisableColor(int row, int column, color newColor);
  public boolean getState(int row, int column);
  public color getColor(int row, int column);
  public color getDisableColor(int row, int column);
  public int getRowCount();
  public int getColumnCount();
}
