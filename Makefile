FILES ?= ./
GREP ?= egrep

default: help

help:
	@echo "Commands available:";
	@echo " make help";
	@echo " make debug";
	@echo " make search";
	@echo " make search-embedded_styles";
	@echo " make search-inline_styles";
	@echo " make search-embedded_scripts";

debug:
	@echo "Variables:";
	@echo " FILES = $(FILES)";
	@echo " GREP = $(GREP)";

search:
	@$(GREP) '<script|<style>|style=*.' -r $(FILES);

search-embedded_styles:
	@$(GREP) '<style>' -r $(FILES);

search-inline_styles:
	@$(GREP) ' style=*.' -r $(FILES);

search-embedded_scripts:
	egrep '<script =*' -r $(FILES);

