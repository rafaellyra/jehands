FILES ?= ./
GREP ?= egrep

default: help

help:
	@echo "Commands available:"
	@echo " make help"
	@echo " make debug"
	@echo " make search"
	@echo " make search-css_incorporado"
	@echo " make search-css_inline"
	@echo " make search-js_incorporado"

debug:
	@echo "Variables:"
	@echo " FILES = $(FILES)"
	@echo " GREP = $(GREP)"

search:
	@GREP '<script|<style>|style=*.' -r $(FILES);

search-css_incorporado:
	@GREP '<style>' -r $(FILES);

search-css_inline:
	@GREP ' style=*.' -r $(FILES);

search-js_incorporado:
	@GREP '<script' -r $(FILES);

