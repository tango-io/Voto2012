Voto.Router = Backbone.Router.extend({
    routes: {
        ""      :       "home"
    },

    initialize: function(){
        this.latestTweets = new Voto.View.LatestTweets();
    },

    home: function(){
        this.home = new Voto.View.Home();
    },
});
