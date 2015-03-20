class ant {
  include homebrew
  ensure_resource('homebrew::tap','homebrew/versions', {
    'ensure' => 'present' }
  )
  #homebrew::tap { 'homebrew/versions': }

  package {
    'ant' :
      ensure => '1.9.4';
  } 
}
