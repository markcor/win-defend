class win_defend::disable_windows_defender {

# Bug list 
# https://bugzilla.mozilla.org/show_bug.cgi?id=1512435

	service { WinDefend :
		ensure => 'stopped',
		enable => 'false',
	}

	registry::value { DisableConfig :	
		key  => 'HKLM\SOFTWARE\Policies\Microsoft\Windows Defender',
		type => dword,
		data => '1',
	}
	registry::value { DisableAntiSpyware :
		key  => 'HKLM\SOFTWARE\Policies\Microsoft\Windows Defender',
		type => dword,
		data => '1',
	}
}
