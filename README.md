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
1. Environment always uses `/root/.local/share/code-server/User/settings.json`
2. We map that using dotmake, so DevX Spaces is detected and contents
   of the appropriate profile are applied.  *(Beware of naive upstreaming on
   changes to settings -- you must apply changes to ./profiles/devx-spaces and
   commit there, because that is the source of data when dotmake runs)*
4. *(todo: need tooling to propagate
   changes upstream from spaces to github)*

## Codespaces

## TODO:
4.  (TODO) tooling for synchronizing variations 

