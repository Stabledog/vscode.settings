# VSCode Settings Management

## WSL, Windows:
1.  Canonical github repo for vscode config is always [Stabledog/vscode.settings]()
2.  We don't do branches of this repo.  Variations are managed with the VSCode profiles feature
3.  Maintain the following in the Default profile:
   - Key bindings (json in git)
   - Tasks (json in git)
   - Snippets ( snippets/ subdir )
4.  (TODO) tooling for synchronizing variations 
5.  Continue to use git push/pull to share a single git tree with all profiles
6.  (TODO) how to deal with browser environments?
   - Codespaces
   - DevX Spaces
