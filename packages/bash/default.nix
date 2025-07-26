{ config, pkgs, ... }:

{
	programs.bash = {
		enable = true;

		shellAliases = {
			"wow" = "echo 'WOW'";
			"rebuild-nix" = "sudo nixos-rebuild switch --flake /home/user/nix";
			"rebuild-home" = "home-manager switch --flake /home/user/nix";
		};
	};
}
