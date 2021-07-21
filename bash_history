#1626863668
cd /home/lmatheson/winhome/AppData/Roaming/Code/User # to Code
#1626864217
gpa Generalize settings cleanup script #
#1626864322
git show origin/master:./settings.json > master-settings.json # Update master-settings from upstream
#1626864372
lh c
#1626864375
lh d
#1626864378
lh e
#1626864391
gs
#1626864395
ga bash_history 
#1626864398
gs
#1626864402
lr
#1626864440
vimdiff settings.json master-settings.json # Reconcile with master
#1626864900
gs
#1626864934
git show origin/master:./keybindings.json > master-keybindings.json # Update master-settings from upstream
#1626864937
lr
#1626864948
vimdiff keybindings.json master-keybindings.json 
#1626864964
cp master-keybindings.json keybindings.json 
#1626864966
gs
