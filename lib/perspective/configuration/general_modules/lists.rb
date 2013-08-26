# -*- encoding : utf-8 -*-

module ::Perspective::Configuration::GeneralModules::Lists

  extend ::CascadingConfiguration::Setting

  #######################
  #  default_list_size  #
  #######################

  attr_configuration :default_list_size
    
  self.default_list_size = 10

end
