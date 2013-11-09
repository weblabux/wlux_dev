default[:wlux_dev][:xampp_url] = 'http://sourceforge.net/projects/xampp/files/XAMPP%20Linux/1.8.1/xampp-linux-1.8.1.tar.gz/download'
default[:wlux_dev][:dir] = '/opt'
default[:wlux_dev][:drupal_version] = '6.28'
default[:wlux_dev][:drupal_url] =
  "http://ftp.drupal.org/files/projects/drupal-#{default[:wlux_dev][:drupal_version]}.tar.gz"

default[:wlux_dev][:drupal_name] = 'drupal'

# wlux settings
default[:wlux_dev][:drupal_dir] = "#{default[:wlux_dev]}/xampp/htdocs/drupal"
