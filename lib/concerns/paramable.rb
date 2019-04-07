module Paramable
#*******************************************
  module InstanceMethods

    def to_param
      #creates a lowercase, space free, string
      name.downcase.gsub(' ', '-')
    end

  end
#*******************************************
  module ClassMethods

  #None

  end
#*******************************************
end
