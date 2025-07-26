{ config, pkgs, ... }:

{
	home = {
		username = "user";
		homeDirectory = "/home/user";
		stateVersion = "25.05";
	};

	imports = [
		./packages	
	];
}
