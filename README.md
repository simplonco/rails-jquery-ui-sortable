#Objectif 
Permettre à un utilisateur de modifier l'ordre d'objets dans une liste. L'utilisateur doit pouvoir drag and drop un élément, le mettre à une autre position, et cette action doit enregistrer la liste automatiquement. 

#Ressources
Cette démo se base sur le RailsCast 147 revisited de Ryan Bates.
(Attention : le tutoriel 147 initial utilise rails 1.9, ce qui le rend obsolète).

Pour gérer le drag and drop, Ryan Bates utilise une librairie jQuery : [jQuery user interface](http://jqueryui.com/sortable/). 

#Appli de démo
Pour la démonstration, j'ai créé une liste de canards célèbres à trier. L'appli de démo contient donc un modèle Canard, un CanardController et une vue index.html.erb qui liste tous les canards de la base de données. Il est également possible de créer un nouveau canard via new.html.erb. 

Cette appli basique a été construite en suivant le premier des Rails guides, [Getting started](http://guides.rubyonrails.org/getting_started.html) (je ne m'en lasse pas).

#jQuery UI

Pour l'installation, il ne suffit pas de suivre le tuto de Ryan Bates, qui travaille avec Rails 3. Dans sa vidéo, il y passe à peine 2 secondes : "il suffit de mettre require jquery-ui dans application.js". Dans le monde réel, il faut ajouter 

`gem 'jquery-ui-rails'`

à son gemfile, puis faire un 

`bundle install`

puis ajouter au fichier application.js la ligne 

`//= require jquery.ui.all`

C'est un peu le même problème avec l'utilisation de la fonction "sortable". Ryan Bates y passe une seconde et fini par : "Just as easy as that". C'est un piège. 

Une fois jQuery UI installé, il faut modifier le fichier canard.js.coffee pour y implémenter cette fonction "sortable". Mais la syntaxe a changé depuis la mise en ligne du RailsCast. 

qd Ryan Bates tape 

`$('#faqs').sortable`

il faut en fait saisir qque chose comme ça :

`$('#faqs').sortable();`

Cela doit suffire : la liste doit maintenant etre modifiable en drag and drop. Mais les modifications ne sont pas encore sauvegardées : qd on rafraichit la page la liste revient à son état initial. 

