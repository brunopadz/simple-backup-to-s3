# Simple Backup to S3
> Easy scripts to sync files to S3

Simple scripts to backup files to AWS S3
---
[![Code Triagers Badge](https://www.codetriage.com/brunopadz/simple-backup-to-s3/badges/users.svg)](https://www.codetriage.com/brunopadz/simple-backup-to-s3)

## tl;dr
🔸 Clone it

🔸 Adjust it to your needs

🔸 Test it

🔸 Deploy it


## Usage
Clone the repo
```sh
git clone https://github.com/brunopadz/simple-backup-to-s3.git
```

Adjust all parameters on `src/240min.sh` and `src/daily.sh`. Don't worry, everything is commented.

Use `utils/crontab` file to guide you how to setup your crontab :)

## Why
I've created these scripts to backup SAP HANA backup files to S3 and decided to open source the solution.
Because, why not?

### TODO
* Add more crontab examples
