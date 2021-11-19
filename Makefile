SHELL = /bin/sh

all: clean_all build clean_sources

clean_all:
	rm -rf *.tar joomla-widget-accessibility-plugin

clean_sources:
	rm -rf joomla-widget-accessibility-plugin

build:
	mkdir joomla-widget-accessibility-plugin;
	cp -r site joomla-widget-accessibility-plugin;
	cp userway_script.xml joomla-widget-accessibility-plugin;
	tar -zcvf joomla-widget-accessibility-plugin.tar.gz joomla-widget-accessibility-plugin;