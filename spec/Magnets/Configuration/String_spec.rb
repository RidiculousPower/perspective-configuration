
require_relative '../../../lib/magnets-configuration.rb'

describe ::Magnets::Configuration::String do

  ###################
  #  to_camel_case  #
  ###################
  
  it 'can return a duplicate in camel case' do
    string = 'under_score_string'
    string.to_camel_case.should == 'UnderScoreString'
    string.should == 'under_score_string'
  end
  
  ####################
  #  to_camel_case!  #
  ####################
  
  it 'can modify itself to be camel case' do
    string = 'under_score_string'
    string.to_camel_case!.should == 'UnderScoreString'
    string.should == 'UnderScoreString'
  end

end
