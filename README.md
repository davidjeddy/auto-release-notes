**Auto Release Notes**

# Why
Automatically generate release / change notes when a commit is executed.

# Hooks
How to include this project into dependancy management systems.

## PHP's composer
(Assumption is coposer is a system binary)
Run the following lines in a projects root to include `auto release notes`
as part of the project.

```
composer require davidjeddy/auto-release-notes
composer update -o -vvv
```

# Output
Once the process has run you should now havea a release-changes.md in
the root of your project.