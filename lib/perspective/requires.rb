# -*- encoding : utf-8 -*-

require 'to_camel_case'
require 'cascading_configuration'

basepath = 'configuration'

[

  'perspective_singleton',

  'general_modules/lists',
  'general_modules/files'

].each { |this_file| require_relative( ::File.join( basepath, this_file ) << '.rb' ) }

