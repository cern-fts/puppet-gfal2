# gfal2 puppet module
#### Table of Contents

1. [Description](#description)
2. [Installation](#installation)
3. [Usage](#usage)


## Description


The gfal2 puppet module enables the installation and configuration of the gfal2 library + its plugins and the gfal2-util client.


## Installation


The puppet-gfal2 module can be installed from puppetforge via

```
puppet module install dmc-gfal2
```

the module doesn't configure the repositories for the installation.
Gfal2 in RedHat systems is available in EPEL.

## Usage

Just including the module in your manifest is enough

```
include gfal2

```

and by default gfal2 and the srm, http , gsiftp plugins will be installed and configured.

Check the test/init.pp manifest to see how to enable other plugins

detailed instructions on how to configure the different plugins will follow

