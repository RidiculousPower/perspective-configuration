
require_relative '../../lib/magnets-configuration.rb'

describe ::Magnets::Configuration do

  ############################
  #  register_configuration  #
  ############################

  it 'can register configuration settings domains and singleton modules that control them and can be extended by other modules' do
    
    module ExtendingModule
      
      def some_method
      end
      
    end
    
    ::Magnets::Configuration.register_configuration( :sub_settings, ExtendingModule )
    
    ::Magnets::Configuration.respond_to?( :sub_settings ).should == true
    ::Magnets::Configuration.sub_settings.respond_to?( :some_method ).should == true
    
  end
  
end
