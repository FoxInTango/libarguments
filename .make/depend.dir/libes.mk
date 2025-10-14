DEPEND_TARGETS += libes.recursive
ECHO_TARGETS += libes.echo
libes.recursive:
	@echo SUPER_MAKE_DIR=/Users/lidali/alpine/libraries/libarguments/               >> /Users/lidali/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/Users/lidali/alpine/libraries/libarguments/.make >> /Users/lidali/alpine/libraries/libes/.make/super
	cd /Users/lidali/alpine/libraries/libes/ && /Applications/Xcode.app/Contents/Developer/usr/bin/make recursive && /Applications/Xcode.app/Contents/Developer/usr/bin/make install
	-rm /Users/lidali/alpine/libraries/libes/.make/super
libes.echo:
	@echo SUPER_MAKE_DIR=/Users/lidali/alpine/libraries/libarguments/               >> /Users/lidali/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/Users/lidali/alpine/libraries/libarguments/.make >> /Users/lidali/alpine/libraries/libes/.make/super
	cd /Users/lidali/alpine/libraries/libes/ && /Applications/Xcode.app/Contents/Developer/usr/bin/make echo
	-rm /Users/lidali/alpine/libraries/libes/.make/super
