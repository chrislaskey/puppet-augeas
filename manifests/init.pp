class augeas (){

	include augeas::params

	package { "augeas":
		name => $augeas::params::package,
		ensure => "present",
	}

	# Install augeas before running any Augeas resources type definitions
	Package["augeas"] -> Augeas <| |>

}
