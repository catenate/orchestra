# Use the Amazon Web Services command-line interface

## Usage

To authorize use of the AWS CLI, either create scripts which echo the
AWS access key (`aws-access-key-id-$(id -un)`) and secret access key
(`aws-secret-access-key-$(id -un)`) , or define the shell variables
`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`, respectively.

To check that the authorization is correct, use the command
`get-caller-identity`.

	aws-cli sts get-caller-identity

## Synopsis

### aws-cli

`aws-cli` finds and runs the AWS CLI program.

`aws-cli` sets output in the `text` format by default, but the
optional named parameter `output` overrides this default with one of
`text`, `table`, or `json`.

By default `aws-cli` turns off color output, for use in the logs of
automation tools, but the optional named parameter `color` overrides
this default.

### aws-cli-upgrade

`aws-cli-upgrade` installs and upgrades the AWS CLI and its Python
installer and dependencies, as well as dependencies for these scripts.
The named parameter `upgrade` is set to true by default, which
will install or upgrade the AWS CLI locally for the current user.
The optional named parameter `install` is set to false by default;
if set to true, `aws-cli-upgrade` will install the Python package
installer, and dependencies for these scripts.

For example, to install the Python installer, script dependencies, and
install or upgrade the AWS CLI:

	aws-cli-upgrade install=true
