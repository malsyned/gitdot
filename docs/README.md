```
Usage: gitdot [-h] [-d GIT_DIR] [-w GIT_WORK_TREE] <command> [args...]

Manage a bare git repository for tracking hidden ("dot") files in a
working tree that exists at an unrelated path.

    GIT_DIR         path to bare git repository (default: $HOME/.dotfiles.git)
    GIT_WORK_TREE   path to working directory (default: $HOME)

command is one of:
    init        create the git repository
    destroy     delete the git repository
    clone       clone an existing repository
    dstatus     display status of all hidden files
    bindump     create text versions of binary files as configured in
                $HOME/.config/gitdot/bindump.conf

Any other command and arguments are passed unmodified to git with the
working directory and git directory configured appropriately for
managing dot files.

gitdot init [additional args to git init...]
    
    Create a new bare git repository in GIT_DIR for tracking

gitdot destroy
    
    Delete the bare git repository GIT_DIR

gitdot clone [additional args to git clone...]
    
    Clone a git repository into the bare repository GIT_DIR

gitdot dstatus [additional args to git status...]
    
    git status of all files in the working tree starting with "."

gitdot bindump [file]
    
    dump binary files to text equivalents in .config/gitdot/bindumps
    as configured by bindump directives in .config/gitdot/gitdot.conf
```
