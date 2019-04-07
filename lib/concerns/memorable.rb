module Memorable
#*******************************************
  module InstanceMethods

    #Bonus: Refactoring the .initialize Method
    def initialize
      self.class.all << self
    end

  end
#*******************************************
  module ClassMethods
  
    def reset_all
      #clears the array of all objects
      all.clear
    end

    def count
      #returns a count of the number of artits in the class
      all.count
    end
  end
#*******************************************
end
