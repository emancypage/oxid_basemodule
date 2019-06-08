####1. Installation

#####1.1 Add to main composer.json file:
```
"autoload": {
    "psr-4": {
        "AppWeb\\BaseModule\\": "./source/modules/app-web/oxid_basemodule"
    }
},
```
then `composer update --no-plugins --no-scripts` after that make `composer update`
