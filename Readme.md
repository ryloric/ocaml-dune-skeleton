## Simple ocaml + dune setup skeleton.

Install [just](https://github.com/casey/just), a command runner with similar syntax to `make`.

### Overview

+ `bin` is where the executables live. Default is main, add more if needed and update dune file. 

+ `lib` is for libraries. Change name in dune file.

### Commands

+ `just <watch|w> <default:main|executable-name> <default:exe|bc|bc.js >` to run continous compilation on changes. Aliased to `jw`

+ `just <build|b> <default:main|executable-name> <default:exe|bc|bc.js>` for just building. Aliased to `jb`

+ `just <exec|e> <default:main|executable-name> <default:exe|bc|bc.js>` for executing a bin. Aliased to `je`

+ `just oi <name>` for installing `name` from opam

### Usage 

+ Clone

+ `rm -rf .git` && `git init`

The is aliased to `jml new <name>`, clones into `name` and does the above.