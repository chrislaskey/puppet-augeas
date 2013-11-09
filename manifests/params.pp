class augeas::params () {

	case $::osfamily {
		"Debian": {
			$package = "libaugeas-ruby"
		}
		"RedHat": {
			$package = "ruby-augeas"
		}
		default: {
			fail("Augeas module only supports Debian and Redhat family linux distributions")
		}
	}

}
