# jehands
jehands is a tool find javascript and css tags in files.

## Dependencies
egrep (or similar) and make


## How to use
To search bouth (css and javscript tags) use the command
```
make search
```

If you have a more specific sarch for inline css into your css path
```
make search-css_inline FILES=webroot/css
```

With your own project, you can customize to lookup a list of paths
```
make search FILES="webroot/html src"
```

## Debug
To list internal variables use ```make debug```, that can be used with other tasks ```make debug search```

## make help
You can aways run the ```make help``` or just ```make```
```
Commands available:
 make help
 make debug
 make search
 make search-css_incorporado
 make search-css_inline
 make search-js_incorporado
```
