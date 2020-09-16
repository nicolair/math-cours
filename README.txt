Présentation

Ce dépôt fait partie du projet maquisdoc dont l'objectif est de présenter
- des documents pédagogiques
- des informations sur la manière de les organiser
- des outils pour les maintenir, les relier, les diffuser
Le projet se répartit sur plusieurs hébergeurs notamment des dépôts GitHub contenant le code des outils et les sources Tex des documents pédagogiques.

Ce dépôt particulier maths-pbs https://github.com/nicolair/maths-cours contient les sources (essentiellement Tex) d'une collection de textes de cours de mathématiques destinés à la classe de mpsi.

Conventions de nommage

- Les fichiers dont le nom commence par "C" suivi par un nombre à 4 chiffres sont relatifs à des textes de cours. Ce nombre vient d'un numéro d'enregistrement dans une base de donnée désormais obsolète.
- Les textes peuvent inclure des figures en pdf compilées à partir de sources le plus souvent en Asymptote (.asy) parfois en Python. Le numéro de la figure apparaît dans le nom du fichier juste avant l'extension et précédée d'un undescore "_" .
- Les fichiers dont le nom commence par "S" suivi d'un nombre entre 1 et 30 sont relatifs aux programmes de colles. Ils sont constitués par des inclusions de fichiers contenant l'ensmble du programme et découpés selon la progression que j'utilisais. 
	
Compilation

Les fichiers intéressants à compiler directement sont ceux dont le nom commence par "c".
Les paquetages à inclure dans l'installation LateX sont indiqués dans le fichier "courspdf.tex".
En principe les figures en pdf sont présentes dans le dépôt Git pour ceux qui ne sont pas habitués à Asymptote

Exemple:  C2160.tex

Ce fichier est trop long pour être cité complètement.

Il inclut 4 figures nommées C2160_1.pdf à C2160_4.pdf présentes dans le dépôt dont les sources sont C2160_1.asy à C2160_4.asy.

