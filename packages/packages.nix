{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		micro
		fastfetch
		tree
		home-manager
		git
	];
}
