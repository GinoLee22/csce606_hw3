class Movie < ActiveRecord::Base
    # define a field of all different ratings
    @all_ratings = ['G', 'PG', 'PG-13', 'R']
    def self.all_ratings 
      @all_ratings
    end
    
    # define the sorting method. sort is the sorting based on (eg. title, releasing date)
    def self.sorting(sort)
     if sort==nil
        self
     else
        self.order(sort)
     end
    end
    
    def self.rating(rating)
        self.where('rating in (?)', rating)
    end
    
end
