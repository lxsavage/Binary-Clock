class LightBoard {
  private boolean[][] board;
  private boolean[][] hiddenTiles;
  private color[][] boardColor;
  private color[][] boardDisableColor;
  private int cellWidth;
  private int cellHeight;
  
  public LightBoard(int rows, int columns) {
    this.board = new boolean[rows][columns];
    this.boardColor = new color[rows][columns];
    this.hiddenTiles = new boolean[rows][columns];
    this.boardDisableColor = new color[rows][columns];
    this.cellWidth = width / columns;
    this.cellHeight = height / rows;
    
    for (int r = 0; r < this.board.length; r++) {
      setRowColor(r, color(255));
      setRowDisableColor(r, color(0));
    }
  }
  
  public void setState(int row, int column, boolean state) {
    this.board[row][column] = state;
  }
  
  public void setTileHidden(int row, int column, boolean state) {
    this.hiddenTiles[row][column] = state;
  }
  
  public void setRowColor(int row, color newColor) {
    for (int c = 0; c < boardColor[row].length; c++) {
      setColor(row, c, newColor);
    }
  }
  
  public void setRowDisableColor(int row, color newColor) {
    for (int c = 0; c < boardColor[row].length; c++) {
      setDisableColor(row, c, newColor);
    }
  }
  
  public void setColor(int row, int column, color newColor) {
    this.boardColor[row][column] = newColor;
  }
  
  public void setDisableColor(int row, int column, color newColor) {
    this.boardDisableColor[row][column] = newColor;
  }
  
  public int getRowCount() {
    return this.board.length;
  }
  
  public int getColumnCount() {
    return this.board[0].length;
  }
  
  public color getColor(int row, int column) {
    return this.boardColor[row][column];
  }
  
  public color getDisableColor(int row, int column) {
    return this.boardDisableColor[row][column];
  }
  
  public boolean getTileHidden(int row, int column) {
    return this.hiddenTiles[row][column];
  }
  
  public boolean getState(int row, int column) {
    return this.board[row][column];
  }
  
  public void draw() {
    noStroke();
    for (int r = 0; r < this.board.length; r++) {
      for (int c = 0; c < this.board[0].length; c++) {
        int posX = this.cellWidth * c;
        int posY = this.cellHeight * r;
        if (this.board[r][c]) {
          fill(this.boardColor[r][c]);
        } else {
          fill(this.boardDisableColor[r][c]);
        }
        if (!this.hiddenTiles[r][c]) {
          ellipse(
            posX + this.cellWidth / 2, posY + this.cellHeight / 2,
            this.cellWidth / 2, this.cellHeight / 2
          );
        }
      }
    }
  }
}
