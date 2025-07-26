{ pkgs, ... }:

{	
	users = {
		users.user = {
			isNormalUser = true;
			extraGroups = [ "wheel" "networkmanager" ];
			home = "/home/user";
		};
	};
}
