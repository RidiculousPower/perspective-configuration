# -*- encoding : utf-8 -*-

module ::Perspective::Configuration::GeneralModules::Files

  extend ::CascadingConfiguration::Setting

  ##############
  #  by_path?  #
  ##############

  attr_configuration :by_path?

  ######################
  #  by_path? Default  #
  ######################
    
  self.by_path = false

  #################
  #  by_content?  #
  #################

  def by_content?
    
    return ! by_path?
    
  end
  
  ##############
  #  by_path!  #
  ##############

  def by_path!
    
    self.by_path = true
    
  end
  
  #################
  #  by_content!  #
  #################

  def by_content!

    self.by_path = false

  end

end
