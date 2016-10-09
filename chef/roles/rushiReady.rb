name "rushi-server"
description "Plug and play single rushi server"

#Timezone config
default_attributes(
  "tz" => "Brazil/East",
  "timezone" => {
    "use_symlink" => true
  },
  "timezone" => {
    "use_symlink" => true
  }

)

run_list(
Timezone
  "recipe[timezone-ii]",
#Nginx
#  "recipe[nginx::nginx]",
)
