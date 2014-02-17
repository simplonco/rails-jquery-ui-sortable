#Objectif 
Permettre à un utilisateur de modifier l'ordre d'objets dans une liste. L'utilisateur doit pouvoir drag and drop un élément, le mettre à une autre position, et cette action doit enregistrer la liste automatiquement. 

#Outils
Cette démo se base sur le RailsCast 147 revisited de Ryan Bates.
(Attention : le tutoriel 147 initial utilise rails 1.9, ce qui le rend obsolète).

Ryan Bates utilise une librairie jQuery : jQuery user interface ( http://jqueryui.com/sortable/ )

#Structure de l'appli de démo

Pour la démonstration, j'ai créé une liste de canards célèbres à trier. L'appli de démo contient donc un modèle Canard, un CanardController et une view index.html.erb qui liste tous les canards de la base de données. 