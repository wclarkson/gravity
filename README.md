Gravity
=======
Gravity applies a pretty simple transformation to the characters in the
	current buffer. Just type `:Gravity`.

_BEFORE:_

	 ______________ 
	< Hello World! >
	 -------------- 
	        \   ^__^
	         \  (oo)\_______
	            (__)\       )\/\
	                ||----w |
	                ||     ||

_AFTER:_

	            __              
	            d!_             
	        __  --->\           
	  _____ Wo__^__^\_      )   
	 _Hello_--rl(oo)||______|   
	<-------\\--(__)||----w||\/\

System Requirements
===================
- Vim built with python support (`vim --version | grep +python`)

Installation
============
Install [pathogen.vim](https://github.com/tpope/vim-pathogen), then:

    cd ~/.vim/bundle
    git clone git://github.com/wclarkson/gravity.git
