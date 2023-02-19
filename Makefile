# コンパイラの設定
COBC = cobc
COBC_FLAGS = -x

# ソースコードの場所
SRC_DIR = src

# ソースコードのファイル名を取得する
SOURCES := $(wildcard $(SRC_DIR)/main.cbl $(SRC_DIR)/*.cbl)

# 出力先のディレクトリ
OUT_DIR = bin

# バイナリの名前
BIN_NAME = main

# デバッグ用のフラグ
DEBUG_FLAG = -v

.PHONY: all clean debug

all: $(OUT_DIR)/$(BIN_NAME)

# バイナリを作成する
$(OUT_DIR)/$(BIN_NAME): $(SOURCES)
	$(COBC) $(COBC_FLAGS) -o $@ $^

# cleanコマンドを実行する
clean:
	rm -f $(OUT_DIR)/*.int $(OUT_DIR)/*.idy $(OUT_DIR)/*.err $(OUT_DIR)/*.lst $(OUT_DIR)/*.obj $(OUT_DIR)/$(BIN_NAME)

# debugフラグを付けてバイナリを作成する
debug: COBC_FLAGS += $(DEBUG_FLAG)
debug: $(OUT_DIR)/$(BIN_NAME)
