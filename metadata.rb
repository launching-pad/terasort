name             'terasort'
maintainer       "terasort"
maintainer_email "shelanrc@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs terasort'
version          "0.1"

recipe            "terasort::install", "Experiment setup for terasort"
recipe            "terasort::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "terasort/group",
:description => "group parameter value",
:type => "string"

attribute "terasort/user",
:description => "user parameter value",
:type => "string"



