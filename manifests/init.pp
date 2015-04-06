class ant($version       = undef,
          $homebrew_root = undef) {
  include homebrew
  
  validate_string($version,
                  $homebrew_root)

  ensure_resource('homebrew::tap','homebrew/versions', {
    'ensure' => 'present' }
  )

  package { 'ant' :
    ensure => $version;
  }

  file { "${homebrew_root}/Cellar/ant/${version}/lib":
    ensure => link,
    target => "${homebrew_root}/Cellar/ant/${version}/libexec/lib"
  }
}
