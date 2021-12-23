SHELL = /bin/sh

all: clean_all build clean_sources

clean_all:
	rm -rf *.zip joomla-widget-accessibility-plugin

clean_sources:
	rm -rf joomla-widget-accessibility-plugin

build:
	mkdir joomla-widget-accessibility-plugin;
	cp -r site joomla-widget-accessibility-plugin;
	cp manifest.xml joomla-widget-accessibility-plugin;
	find ./joomla-widget-accessibility-plugin -name '.DS_Store' -type f -delete
	zip -r joomla-widget-accessibility-plugin.zip joomla-widget-accessibility-plugin;