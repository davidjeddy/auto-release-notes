# Auto Release Notes

## Why
Automatically generate ./RELEASE-NOTES.md / CHANGE-LOG.md notes from
Git commit messages when a new tag is generated.

## Install

## Usages
Execute:
```
    ./path/to/package/run.sh
```

Arguments:
 - `-p` or `--path "./path/to/the/project/to/generate/change/set/for/"`
 - `-ro` or `--recent-only true`

## Integrations
How to include this project into dependancy management systems.

### PHP's composer
(Assumption is coposer is a system binary)
Run the following lines in a projects root to include `auto release notes`
as part of the project.

```
composer require davidjeddy/auto-release-notes
composer update -o -vvv
```

## Results
Once the process has run you should now havea a release-changes.md in
the root of your project.
