<h1>Terminal setup as Z mode</h1>

This scripts executed together generate all the configuration to turn your terminal the coolest terminal.

The z_setup.sh script only works with package managers wich can install packages like this:

  <code><b> ${package_manager} install ${package}</b></code>

You can install the requeriments list manually and then execute the .zsh script from zsh shell.

<h4>Basic installation:</h4>

  - Execute first z_setup.sh with your package manager as first parameter. Example: <b>bash z_setup.sh apt</b>
  - After zsh shell prompts, execute z_setup.zsh

<h4>Manual installation:</h4>

At first, install the following dependencies:

  - curl
  - vim
  - zsh
  - ruby
  - ruby-dev
  - lolcat [optional]
  - tilix  [optional]
  - colorls with ruby gem package manager
  - Ubuntu Mono Nerd Fonr Complete.ttf
  - Oh-my-zsh

The, execute the z_setup.zsh from zsh shell
