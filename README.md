Allows for git status updates on command prompt.

Clone .git_ps1 into home and add the following or something similar to your .bashrc

if [ -f ~/.git_ps1/ps1.bash ]; then                                             
  source ~/.git_ps1/ps1.bash                                                    
fi   
