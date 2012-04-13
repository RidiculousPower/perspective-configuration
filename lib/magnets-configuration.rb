
module ::Magnets
  module Configuration
  end
end

basepath = 'magnets-configuration/Magnets/Configuration'

files = [
  'String'
]

files.each do |this_file|
  require_relative( File.join( basepath, this_file ) + '.rb' )
end

require_relative( basepath + '.rb' )

class ::String
  include ::Magnets::Configuration::String
end
