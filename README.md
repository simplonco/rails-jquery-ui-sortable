#Objectif 
Permettre à un utilisateur de modifier l'ordre d'objets dans une liste. L'utilisateur doit pouvoir drag and drop un élément, le mettre à une autre position, et cette action doit enregistrer la liste automatiquement. 

#Ressources
Cette démo se base sur le RailsCast 147 revisited de Ryan Bates.
(Attention : le tutoriel 147 initial utilise rails 1.9, ce qui le rend obsolète).

Partant du principe que les personnes intéressées regarderont cette vidéo, je ne vais pas détailler toutes les étapes. 

Pour gérer le drag and drop, Ryan Bates utilise une librairie jQuery : [jQuery user interface](http://jqueryui.com/sortable/).

#Appli de démo
Pour la démonstration, j'ai créé une liste de canards célèbres à trier. L'appli de démo contient donc un modèle Canard, un CanardController et une vue index.html.erb qui liste tous les canards de la base de données. Il est également possible de créer un nouveau canard via new.html.erb. 

Cette appli basique a été construite en suivant le premier des Rails guides, [Getting started](http://guides.rubyonrails.org/getting_started.html) (je ne m'en lasse pas).

#jQuery UI

Pour gérer le drag and drop, il faut d'abord installer la librairie jQuery UI, puis utiliser la fonciont sortable. 

Pour l'installation, il ne suffit pas de suivre le tuto de Ryan Bates, qui travaille avec Rails 3. Dans sa vidéo, il y passe à peine 2 secondes : "il suffit de mettre require jquery-ui dans application.js". Dans le monde réel, il faut ajouter 

`gem 'jquery-ui-rails'`

à son gemfile, puis faire un 

`bundle install`

puis ajouter au fichier application.js la ligne 

`//= require jquery.ui.all`

Une fois jQuery UI installé, il faut modifier le fichier canard.js.coffee (dans app/assets/javascript) pour y implémenter cette fonction "sortable".

Plus de précisions pour la syntaxe sur la page de [jQuery UI](http://jqueryui.com/sortable/)

Cela doit suffire : la liste doit maintenant être modifiable en drag and drop. Mais les modifications ne sont pas encore sauvegardées : quand on rafraichit la page la liste revient à son état initial. 

Pour changer cela, il faut que le mouvement en drag and drop modifie la base de données. Il faut tout d'abord ajouter une colonne position à la table canards. 

`rails g migration add_position_to_canards position:integer`

puis

`rake db:migrate`


collection { post :sort }