# VSCode Settings Management

## WSL, Windows:
1.  Canonical github repo for vscode config is always [Stabledog/vscode.settings]()
2.  We don't do branches of this repo.  Variations are managed with the VSCode profiles feature
3.  Maintain the following in the Default profile:
   - Key bindings (json in git)
   - Tasks (json in git)
   - Snippets ( snippets/ subdir )
4.  To select the desired profile on launch, you must add `--profile <name>` to the vscode command line

## DevX Spaces

## Codespaces

## TODO:
4.  (TODO) tooling for synchronizing variations 

