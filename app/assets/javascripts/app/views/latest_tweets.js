Voto.View.LatestTweets = Backbone.View.extend({
    el: '#latest_tweets',
    ht: 'voto2012',
    rpp: 10,
    
    events: {
        'click #update-timeline' : 'updateTimeline'   
    },

    updateTimeline: function(e) {
        var self = this;

        $.getJSON('http://search.twitter.com/search.json?rpp='+this.rpp+'&callback=?&q=%23'+this.ht+'&result_type=recent', function(data){
            self.timeline = data;
            self.render();
        });
    },

    initialize: function(){
        this.updateTimeline();
    },

    render: function(){
        var results = this.timeline.results
        ,   self = this;
        t = this.$el;
        this.$el.find('.timeline').html('');

        _.each(results, function(tweet) {
            self.$el.find('.timeline').append('<li class="tweet"><img src="'+tweet.profile_image_url+'" width="50" height="60"/><p class="tweetText">'+tweet.text+'</p></li>');
        });

        return this;
    }
});
