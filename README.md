#Rhubot

Make Hubot play nice with Ruby.

#Setup

##Campfire Setup 

Ensure you have the [rhubot campfire script](http://comingsoon#) and that the following configuration options are defined for hubot.

####RHUBOT_PATH

This is the path to where you installed rhubot. Eg, `/etc/rhubot`

####HUBOT_URL

This is the URL to the Hubot HTTP router. Eg, `http://192.168.0.0:8080`

##Install rhubot

```base
cd /etc/
git clone git@github.com:minton/rhubot.git
bundle install
```

##Install your wares

Put your scripts into `scripts/`. See [here](https://github.com/minton/rhubot/blob/master/scripts/what.md) for more details.

#Karma

[![endorse](https://api.coderwall.com/minton/endorsecount.png)](https://coderwall.com/minton) or [follow me](https://twitter.com/intent/follow?screen_name=mcminton).
