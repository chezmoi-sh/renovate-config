{ pkgs, lib, config, inputs, ... }:

{
  # -- Environment variables
  env.DFT_SKIP_UNCHANGED = "true";

  # -- Required packages
  packages = [
    # - Development tools
    pkgs.runme

    # - Quality assurance tools
    pkgs.commitlint
    pkgs.trunk-io

    # - Miscellaneous tools
    pkgs.act
    pkgs.bash
    pkgs.renovate
  ];

  # -- Customizations
  languages.nix.enable = true;

  devcontainer.enable = true;
  devcontainer.settings.customizations.vscode.extensions = [
    "bierner.github-markdown-preview"
    "bierner.markdown-preview-github-styles"
    "jnoortheen.nix-ide"
    "mkhl.direnv"
    "trunk.io"
  ];
  difftastic.enable = true;

  scripts.motd.exec = ''
      cat <<EOF
    ────────────────────────────────────────────────────────────────────────────────
    👋 Welcome to the `chezmoi.sh/devcontainer` development environment !
    This space contains everything required to contribute to the project.

    📚 No documentation has been written yet ... but it is planned
    🚀 How to start my development experience?
      1. ... (TODO)
    ────────────────────────────────────────────────────────────────────────────────
    EOF
  '';
  tasks."devenv:enterShell:motd" = {
    exec = "motd";
    before = [ "devenv:enterShell" ];
  };
}
