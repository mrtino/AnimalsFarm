# La Ferme des Animaux

Ce bot, basé sur [Line Tweetbot](https://github.com/mjordan/linetweetbot), lit le fichier texte animaux.txt et publie une ligne à la fois 
sur le compte [@FermeAnimaux](https://twitter.com/FermeAnimaux).

## Prérequis

* Un compte Twitter dédié.
* Un fichier texte du livre (autre que la Ferme des Animaux éventuellement). 
* Python (et Perl pour formater le fichier texte).

## Prérequis Python

Un bon coup de `pip install twitter` et c'est tout.

## Perl requirements

`cpan Lingua::Sentence` et `cpan File::Slurp` suffisent.

## Pour utiliser le bot sur Twitter

Il va falloir un compte Twitter avec les clés API nécessaires à l'envoi de tweets.

1. Va sur https://apps.twitter.com/ en te connectant avec le compte Twitter à utiliser.
2. Crée une nouvelle app avec le nom et la description qui va bien.
3. Si ce n'est pas le cas, change les permissions de l'app en 'Read and Write'.
4. Dans Settings, génère les clés OAuth.

## Exécution du bot

Une fois les clés de l'API Twitter obtenues, ajoute-les dans la partie "Config variables" dans line_tweetbot.py. Il faudra aussi indiquer 
l'emplacement du livre (`/home/utilisateur/animals/animaux.txt` par exemple).

Pour envoyer les tweets manuellement, il suffit d'exécuter la commande `python line_tweetbot.py` (on peut enlever le `python` en rendant 
exécutable le fichier avec `chmod +x line_tweetbot.py`) dans le dossier contenant les fichiers.

Pour les envoyer de manière automatique, on peut utiliser cron. cron permet d'automatiser les tâches, nous allons automatiser l'envoi de 
tweets toutes les 5 minutes :
`crontab -e`, `*/5 * * * * cd /home/utilisateur/animals && ./line_tweetbot.py`

Mettre une valeur plus petite que 5 minutes voit le risque de se faire bloquer son compte par Twitter. Techniquement, on peut faire 15 
requêtes par tranches de 15 minutes, on peut tout aussi bien faire un envoi toutes les minutes, mais c'est risqué.

## Licence

Domaine Public.
