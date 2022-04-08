# Move Environment Tag Action

Supported Environment Tag names:

- env-integration
- env-production
- env-staging

## Example

```yaml
example:
  steps:
    - uses: inloco/actions-bootstrap@HEAD
    - name: Move Staging Environment Tag to HEAD
      uses: inloco/actions-kustomize-image-tags@HEAD
      with:
        env-tag: env-staging
        git-ref: HEAD
```
