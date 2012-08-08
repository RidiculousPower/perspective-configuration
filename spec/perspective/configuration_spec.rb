
require_relative '../../lib/perspective/configuration.rb'

describe ::Perspective::Configuration do

  ############################
  #  register_configuration  #
  ############################

  it 'can register configuration settings domains and singleton modules that control them and can be extended by other modules' do
    
    module ExtendingModule
      
      def some_method
      end
      
    end
    
    ::Perspective::Configuration.register_configuration( :sub_settings, ExtendingModule )
    
    ::Perspective::Configuration.respond_to?( :sub_settings ).should == true
    ::Perspective::Configuration.sub_settings.respond_to?( :some_method ).should == true
    
  end
  
end
