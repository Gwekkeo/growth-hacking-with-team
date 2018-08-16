## Go lien App HEROKU:
# growth-hacking-with-team

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

Les identifiants du compte Twitter sont déjà présents dans sur Heroku tu n'auras qu'à lancer le bot dans le Terminal.

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
