# Scripts for Argos

This project contains various scripts to be used with [Argos, an extension to GNOME Shell](https://github.com/p-e-w/argos), that I find useful.

### Description of scripts

- `cpufreq.sh`: Shows current CPU speed using `cpupower` tool in the top panel. Lists available frequency governors in its drop down menu and allows switching them, if the current user is permitted to run `sudo cpupower frequency-set -g (...)`.

### Installation

#### Automated

Run `install.sh` script located in the repository's main directory.

#### Manual

Copy or link desired scripts to your `~/.config/argos` directory - e.g.:
```
# assuming you checked out the repository to ~/git/argos-scripts
# and want to have the state refreshed every 3 seconds:

cd ~/.config/argos
ln -s ~/git/argos-scripts/cpufreq.sh cpufreq.3s.sh
```
For details on setting refresh interval see [Argos documentation on naming scripts](https://github.com/p-e-w/argos#filename-format).

