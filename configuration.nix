{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./modules
      ./packages/packages.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  networking.hostName = "nixos"; # Define your hostname.

  time.timeZone = "Asia/Krasnoyarsk";

  services.openssh.enable = true;

  system.stateVersion = "25.05"; # Did you read the comment?
}

