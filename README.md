#Objectif 
Permettre à un utilisateur de modifier l'ordre d'objets dans une liste. L'utilisateur doit pouvoir drag and drop un élément, le mettre à une autre position, et cette action doit enregistrer la liste automatiquement. 

#Ressources
Cette démo se base sur le RailsCast 147 revisited de Ryan Bates.
(Attention : le tutoriel 147 initial utilise rails 1.9, ce qui le rend obsolète).

Pour gérer le drag and drop, Ryan Bates utilise une librairie jQuery : [jQuery user interface](http://jqueryui.com/sortable/). 

#Appli de démo
Pour la démonstration, j'ai créé une liste de canards célèbres à trier. L'appli de démo contient donc un modèle Canard, un CanardController et une vue index.html.erb qui liste tous les canards de la base de données. Il est également possible de créer un nouveau canard via new.html.erb. 

Cette appli basique a été construite en suivant le premier des Rails guides, [Getting started](http://guides.rubyonrails.org/getting_started.html) (je ne m'en lasse pas).