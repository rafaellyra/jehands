FILES = ./;

search:
	egrep '<script =*|<style>|style=*.' -r $(FILES);

search-js_incorporado:
	egrep '<script =*' -r $(FILES);

search-css_incorporado:
	egrep '<style>' -r $(FILES);

search-css_inline:
	egrep 'style=*.' -r $(FILES);