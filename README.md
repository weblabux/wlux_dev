# wlux_dev cookbook

Installs and configures a LAMPP and Drupal stack to support development of the
WebLabUX front-end and back-end environment.

# Requirements

Tested (and only supported on) Ubuntu 12.04 LTS.

# Attributes

* `drupal_version`: The version of Drupal that should be installed, e.g. `6.28`.

# Recipes

* [Rapid-7 XAMPP Install Recipe](https://github.com/nickbarnwell/xampp), (HEAD)
* "apt", "~> 2.2.0"
* "git", "~> 2.7.0"
* "build-essential", "~1.4.2"

# Author

Author:: Nick Barnwell (nb+wlux@ul.io)
