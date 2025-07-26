{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./modules
      ./packages/packages.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.

  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  time.timeZone = "Asia/Krasnoyarsk";

  services.openssh.enable = true;

  system.stateVersion = "25.05"; # Did you read the comment?
}

