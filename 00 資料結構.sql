/* 欄位結構 */

/* 整數 */
# INT 

/*  總位數，s：小數位數  */
# NUMERIC(p,s) 

/* 字串 */

# 固定長度字串，長度為 n，不足會補空格
# CHAR(n) 

# 可變長度字串，最多 n 個字元
# VARCHAR(n) 


/* 時間 */

# YYYY-MM-DD
# DATE

# YYYY-MM-DD HH:MM:SS
# DATETIME

# 同 DATETIME，但會自動記錄修改時間，可作時區轉換
# TIMESTAMP

# HH:MM:SS
# TIME

# YYYY
# YEAR
