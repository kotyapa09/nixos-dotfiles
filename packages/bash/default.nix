{ config, pkgs, ... }:

{
	programs.bash = {
		enable = true;

		shellAliases = {
			"wow" = "echo 'WOW'";
			"rebuils-nix" = "sudo nixos-rebuild switch --flake /home/user/nix";
			"rebuils-home" = "home-manager switch --flake /home/user/nix";
		};
	};
}
