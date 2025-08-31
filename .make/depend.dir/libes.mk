DEPEND_TARGETS += libes.build
ECHO_TARGETS += libes.echo
libes.build:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
libes.echo:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
