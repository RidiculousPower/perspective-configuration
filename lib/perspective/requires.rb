
require 'to_camel_case'
require 'cascading_configuration'

basepath = 'configuration'

files = [

  'singleton',
  'lists'

]

files.each do |this_file|
  require_relative( File.join( basepath, this_file ) + '.rb' )
end

