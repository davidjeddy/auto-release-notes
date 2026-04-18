# Notes

On creation of a tag (ref) parrse the ref name.
If it mattches pattern `refs/tags/[0-9].[0-9].[0-9]`

Pattern: refs/tags/456765432565.125654323676432.2567654323456
Example: ^refs\/tags\/(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(-(0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(\.(0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*)?(\+[0-9a-zA-Z-]+(\.[0-9a-zA-Z-]+)*)?$
Ref: https://github.com/semver/semver/issues/232