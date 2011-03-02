My dotfiles, just like I like 'em.
==================================

I install them like this
------------------------

First, I clone the repo into my home folder:

    cd ~/
    git clone git://github.com/citrus/.dotfiles
    
    
Then I backup the old config:

    mv .bash_login bash_login.bak
    
    
Next, I create a new file with `vi .bash_login` and paste this stuff:

    # ----------------------
    # Load dotfiles

    source .dotfiles/.bash_login


Then I keep editing with some of my own stuff... Stuff that might not apply to you:

    # ----------------------
    # Shortcuts

    # projects
    alias gems="cd ~/projects/gems; ls"
    alias sins="cd ~/projects/sinatra; ls"
    alias ror2="cd ~/projects/rails2; ls"
    alias ror3="cd ~/projects/rails3; ls"
    
    
    # servers
    alias citrumac="ssh -p xxxx citrus@xx.xx.xx.xx"
    alias citrudev="ssh -p xxxx citrus@xx.xx.xx.xx"

    ... you get the idea
    
    
I setup my mysql variables so I can use `dblist` and `dbdump my_database` without being prompted for my password.

    MYSQL_HOST="localhost" # default
    MYSQL_USER="citrus" # default is 'root'
    MYSQL_PASS="my-password" # default is blank


When I've updated my dotfiles and want to update on another machine, I just run:

    .update




License
-------

Copyright (c) 2011 Spencer Steffen, released under the New BSD License All rights reserved.