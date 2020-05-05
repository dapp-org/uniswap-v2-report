SRC=report.org
OUT=out

all: $(OUT)/report.html

$(OUT)/report.html: $(SRC)
	mkdir -p $(OUT)
	nix-shell --pure --command 'orgdapp-doc $(SRC) $@'
