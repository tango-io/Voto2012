var Voto = Voto || {
    Model: {},
    Collection: {},
    View: {},

    Initialize: function(){
        Voto.router = new Voto.Router();
        Backbone.history.start();
    }
};

$(function(){
    Voto.Initialize();
});
