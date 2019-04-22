# Use AWS Compute resources

## EC2

`ec2-inst-fqdn` prints the fully-qualified domain name of the given
instance `i`.

`ec2-inst-service` waits until the given `service` (one of `ssh`) is
responding on instance `i`.  By default, it waits for up to a `limit` of
180 seconds.

`ec2-run-inst` starts an AWS EC2 instance, and prints the instance
identifier on standard output.  It assigns default values for `ami`
(amazon2 x86), `key` (tester test), `sg` (ssh), and `subnet` (tester 1c).

`ec2-scp` copies the file at path `from` to the path `to` on host `host`.
If `perm` is defined, it sets the permissions on the copied file to the
permissions given by `perm`. It takes the named parameters `user`
(`ec2-user` by default) and `key` (the test key for AWS user `tester`).

`ec2-scp-ssh` copies a file to, and executes it on, a remote host.
It copies the file at path `from` to the path `to` on host `host`.
If `perm` is defined, it sets the permissions on the copied file to the
permissions given by `perm`. It takes the named parameters `user`
(`ec2-user` by default) and `key` (the test key for AWS user `tester`).
If `cmd` is defined, it gives the path `to` as a parameter to the
command `cmd`, as well as any remaining parameters.

`ec2-ssh` takes the named parameters `user` (`ec2-user` by default)
and `key` (the test key for AWS user `tester`).  It gives the remaining
parameters (ssh options, host, and command) to the command `ssh`.

`ec2-term-inst` terminates the given instance `i`.

## Lambda
