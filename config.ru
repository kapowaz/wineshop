require './application'

WineShop.disable :run

map('/') { run WineShop }
