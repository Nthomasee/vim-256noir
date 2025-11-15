VIM_DIR = ~/.vim/colors
NVIM_DIR = ~/.config/nvim/colors

default: colors/256_noir.vim

colors/256_noir.vim: gen.py
	python gen.py > colors/256_noir.vim

install_vim: default
	mkdir -p $(VIM_DIR)
	cp colors/256_noir.vim $(VIM_DIR)

install_nvim: default
	mkdir -p $(NVIM_DIR)
	cp colors/256_noir.vim $(NVIM_DIR)

uninstall_vim:
	rm $(VIM_DIR)/256_noir.vim

uninstall_nvim:
	rm $(NVIM_DIR)/256_noir.vim

.PHONY: default install_vim install_nvim uninstall_vim uninstall_nvim
