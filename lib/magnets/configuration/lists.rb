
module ::Magnets::Configuration::Lists

  include ::CascadingConfiguration::Setting

  #######################
  #  default_list_size  #
  #######################

  attr_configuration :default_list_size
    
  self.default_list_size = 10

end
