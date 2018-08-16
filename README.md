## Go lien App HEROKU:
# growth-hacking-with-team
# https://landing-page-website.herokuapp.com/

## Voir mon code:
```
$ git clone https://github.com/Gwekkeo/growth-hacking-with-team.git
```
```
$ cd in-css-create-your-own-classes
```

## Etapes:
* Installation des gems (sans la production)

```
$ bundle install --without production
```
```
$ rails server
```

#### Dans la barre d'url du Navigateur web
```
$ localhost:3000
```

### Si probleme avec rails server
```
$ rails server -p 4567
```
#### Dans la barre d'url du Navigateur web
```
$ localhost:4567
```
## Bot Twitter 

- Créer un fichier .env et y ajouter tes clés API de Twitter sur ce modèle :
```
{
consumer_key = "clé",
consumer_secret = "clé",
access_token = "clé",
access_token_secret = "clé"
}
```

- Activer la console :
```
$ rails console
```

- Lancer le bot :
```
$ BotTwitter.new.perform
```
Enfin vérifier que les tweets sont bien postés sur notre profil Twitter :
https://twitter.com/joannerr1/with_replies

## Google Analytics

#Allez sur:
https://analytics.google.com/

#Login:
contact.thp.paris@gmail.com
TheIsland75

#Regarder temps réel // audiences


### Version ruby
ruby '2.5.1'
rails '5.2.0'

## TEAM
* Gwendoline
* Nancy
* Louis
* Joanne
* Jérémie
* Rid
