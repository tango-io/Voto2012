Voto.Router = Backbone.Router.extend({
    routes: {
        ""      :       "home"
    },

    home: function(){
        this.home = new Voto.View.Home();
    }
})
