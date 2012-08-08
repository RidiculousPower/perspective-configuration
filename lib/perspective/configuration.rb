
begin ; require 'development' ; rescue ::LoadError ; end

# namespaces that have to be declared ahead of time for proper load order
require_relative './namespaces'

# source file requires
require_relative './requires.rb'

# post-require setup
require_relative './setup.rb'

module ::Perspective::Configuration

  @configuration_modules = { }

  #################################
  #  self.register_configuration  #
  #################################

  def self.register_configuration( configuration_name, configuration_sub_module_extension )
    
    configuration_module = nil
    
    unless configuration_module = @configuration_modules[ configuration_name ]

      configuration_module = define_configuration_sub_module( configuration_name )

      define_configuration_name( configuration_name, configuration_module )
      
    end    
    
    configuration_module.extend( configuration_sub_module_extension )
    
    return configuration_module
    
  end
  
  ####################################
  #  self.define_configuration_name  #
  ####################################
  
  def self.define_configuration_name( configuration_name, configuration_module )
    
    #===========================#
    #  self.configuration_name  #
    #===========================#
    
    define_singleton_method( configuration_name ) do
      
      return configuration_module
      
    end
    
    return self
    
  end
  
  ##########################################
  #  self.define_configuration_sub_module  #
  ##########################################
  
  def self.define_configuration_sub_module( configuration_name )
        
    configuration_module_name = configuration_name.to_s.to_camel_case.to_sym
        
    configuration_module = ::Module.new
    const_set( configuration_module_name, configuration_module )
    
    @configuration_modules[ configuration_name ] = configuration_module
    
    return configuration_module
    
  end
  
end
