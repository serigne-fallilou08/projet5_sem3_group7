projet

1. GoogleSearcher
Le but du programme est que quand l'utilisateur rentre :

$ ruby google_searcher.rb how to center a div

Ce dernier ouvre un onglet Google Chrome (ou équivalent) et lance une recherche google avec ce que l'utilisateur a rempli.

Ce programme est plutôt simple :

L'utilisateur rentre un ARGV à l'exécution du programme
Si ce dernier ne rentre pas d'ARGV, le programme va lui dire comment ça marche
L'ARGV correspond à ce que l'utilisateur veut rechercher sur Google
Le programme va récupérer l'ARGV, contruire une URL à partir de l'ARGV
Puis le programme va ouvrir un nouvel onglet à partir de cette recherche
1.1. ARGV
Commence par créer un programme google_searcher.rb qui va récupérer l'ARGV de l'utilisateur. Si l'ARGV est vide, le programme va s'interrompre et il va dire à l'utilisateur comment s'en servir.

1.2. Construire l'url
Si tu vas sur Google, tu peux remarquer que les recherches que tu fais peuvent être entrées en url après search?q=ta+recherche. Ainsi, l'URL pour la recherche "How to center a div" sera : https://www.google.com/search?q=how+to+center+a+div.

À partir de ces informations, il sera très aisé pour toi de construire l'URL avec l'ARGV.

1.3. Ouvrir Google
Pour ceci, il te faudra utiliser la gem Launchy, et à toi la gloire.

1.4. Programme terminé, on fait un alias ?
Ce qui serait top, serait d'avoir à éviter d'écrire $ /home/ton/chemin/vers/google_searcher.rb how to center a div, ce qui te ferait perdre du temps, et qui rendrait le programme inutile.

Utilise donc un alias qui va appeler ton programme avec un mot très simple, search par exemple. Il devrait ressembler à ceci :

alias search="ruby /home/ton/chemin/vers/google_searcher.rb"

Ainsi, tu peux faire facilement $ search how to center a div.

2. Création d'un dossier ruby
À chaque fois que nous te demandons de faire une app en Ruby, tu as plein de choses à faire : les dossiers lib, le Gemfile qui contient les bonnes gems, la commande rspec --init, et plein d'autres. Bref, ce serait de pouvoir créer une commande mkdiruby, qui s'occupe de créer tout cela pour nous. Elle marcherait comme mkdir, sauf qu'elle s'occuperait de tout ce que tu dois faire quand tu créés un dossier Ruby :

Création d'un dossier qui porte le nom de l'ARGV de l'utilisateur
Si l'utilisateur ne rentre pas de ARGV ou s'il rentre un ARGV avec plusieurs mots, le programme doit dire à l'utilisateur comment s'en servir et s'arrêter
Création du Gemfile avec les gems de TS4A
Git init
Création du fichier .env, puis on le met dans le fichier gitignore
Création du dossier lib
rspec --init
Création d'un Readme.md qui va dire que c'est un programme Ruby
Évidemment, tu vas créer un alias qui va s'occuper de pouvoir appeler ton programme avec mkdiruby (ou autre)
Ce sera l'objectif de ce deuxième programme.

3. Rendu attendu
Tu devras rendre deux programmes :

Un programme qui fait une recherche Google
Un programme qui créé un dossier Ruby entier
Exceptionnellement, on ne te demandera pas de faire de tests pour ces programmes.
