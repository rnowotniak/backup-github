# backup-github
Bash shell script for local backup of own Github repositories.

It clones one's own repositories to subdirectories in the current working directory.\
If the subdirectories are there, then it enters them and fetches changes from the remote.\
Private repositories are included in the backup.

Github $token environment variable needs to be set for this script to work.

## First run
```
export token=...........

$ ./backup-github.sh
nowotniak/alpine-flask
Cloning into 'rnowotniak/alpine-flask'...
remote: Enumerating objects: 63, done.
remote: Total 63 (delta 0), reused 0 (delta 0), pack-reused 63
Receiving objects: 100% (63/63), 11.64 KiB | 11.64 MiB/s, done.
Resolving deltas: 100% (29/29), done.

rnowotniak/ansiblelab
Cloning into 'rnowotniak/ansiblelab'...
remote: Enumerating objects: 60, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 60 (delta 0), reused 1 (delta 0), pack-reused 57
Receiving objects: 100% (60/60), 102.29 KiB | 542.00 KiB/s, done.
Resolving deltas: 100% (21/21), done.

rnowotniak/backup-github
Cloning into 'rnowotniak/backup-github'...
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (3/3), done.
Receiving objects: 100% (4/4), done.
remote: Total 4 (delta 0), reused 4 (delta 0), pack-reused 0

rnowotniak/bannersbroker
Cloning into 'rnowotniak/bannersbroker'...
remote: Enumerating objects: 123, done.
remote: Total 123 (delta 0), reused 0 (delta 0), pack-reused 123
Receiving objects: 100% (123/123), 1.32 MiB | 2.09 MiB/s, done.
Resolving deltas: 100% (58/58), done.

rnowotniak/BNF-analyser-2004
Cloning into 'rnowotniak/BNF-analyser-2004'...
remote: Enumerating objects: 18, done.
remote: Counting objects: 100% (18/18), done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 18 (delta 6), reused 18 (delta 6), pack-reused 0
Receiving objects: 100% (18/18), 27.18 KiB | 13.59 MiB/s, done.
Resolving deltas: 100% (6/6), done.

rnowotniak/chrome-extension-lab
Cloning into 'rnowotniak/chrome-extension-lab'...
remote: Enumerating objects: 17, done.
remote: Counting objects: 100% (17/17), done.
remote: Compressing objects: 100% (13/13), done.
remote: Total 17 (delta 4), reused 17 (delta 4), pack-reused 0
Receiving objects: 100% (17/17), 25.58 KiB | 12.79 MiB/s, done.
Resolving deltas: 100% (4/4), done.

rnowotniak/covid19
Cloning into 'rnowotniak/covid19'...
remote: Enumerating objects: 57, done.
remote: Counting objects: 100% (57/57), done.
remote: Compressing objects: 100% (44/44), done.
remote: Total 57 (delta 22), reused 45 (delta 13), pack-reused 0
Receiving objects: 100% (57/57), 1.25 MiB | 446.00 KiB/s, done.
Resolving deltas: 100% (22/22), done.

...
...
...
```

## Update
```
$ ./backup-github.sh

rnowotniak/alpine-flask
Updating.. OK

rnowotniak/ansiblelab
Updating.. OK

rnowotniak/backup-github
Cloning into 'rnowotniak/backup-github'...
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 4 (delta 0), reused 4 (delta 0), pack-reused 0
Receiving objects: 100% (4/4), done.

rnowotniak/bannersbroker
Updating.. OK

rnowotniak/BNF-analyser-2004
Updating.. OK

rnowotniak/bootstrap4-lab
Updating.. OK

rnowotniak/chrome-extension-lab
Updating.. OK

rnowotniak/covid19
Updating.. OK

...
...
...
```
