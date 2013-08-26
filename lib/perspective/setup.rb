# -*- encoding : utf-8 -*-

module ::Perspective
  extend ::Perspective::Configuration::PerspectiveSingleton
end

::Perspective::Configuration.register_configuration( :files, ::Perspective::Configuration::GeneralModules::Files )
::Perspective::Configuration.register_configuration( :lists, ::Perspective::Configuration::GeneralModules::Lists )
