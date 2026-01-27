# homebrew-tap

Private Homebrew tap for `planka-cli` and future formulas.

## Install

```bash
brew tap voydz/homebrew-tap
brew install planka-cli
```

## Release workflow

1. Build the binary in the app repo:
   ```bash
   make build
   ```
2. Package the binary (tarball must contain `planka-cli` at the root):
   ```bash
   tar -czf planka-cli-0.1.0-macos.tar.gz -C dist planka-cli
   ```
3. Upload the tarball to a GitHub release for the app repo.
4. Update `Formula/planka-cli.rb`:
   - `url` to the release asset
   - `version` to the release version
   - `sha256` to the asset checksum:
     ```bash
     shasum -a 256 planka-cli-0.1.0-macos.tar.gz
     ```

## Notes

- Update the formula per release (version, url, sha256).
