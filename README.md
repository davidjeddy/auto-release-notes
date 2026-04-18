[!WARNING]
**⚠️ This project has been archived and is no longer maintained. ⚠️**

Github has shown it does not respect its users. Other have said it better than I can.

- https://www.theregister.com/2022/06/30/software_freedom_conservancy_quits_github/
- https://www.andrlik.org/dispatches/migrating-from-github-motivation/
- https://techresolve.blog/2025/12/27/looking-to-migrate-company-off-github-whats-the/
- https://lord.io/leaving-github/
- https://dev.to/alanwest/how-to-actually-migrate-from-github-to-codeberg-without-losing-your-mind-33bf>
> Development has moved to Codeberg:
> **➡️ https://codeberg.org/DavidJEddy/auto-release-notes**
>
> Please update your remotes:
> ```bash
> git remote set-url origin https://codeberg.org/DavidJEddy/auto-release-notes
> ```

---
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