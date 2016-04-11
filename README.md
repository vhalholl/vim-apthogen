#vim-apthogen
Just a bunch of config files and plugins for VIM

![img](https://blog.vhalholl.info/wp-content/uploads/2016/04/vim-config-1024x558.png)
## Installation :
Move initial vim configuration :
```sh
mv ~/.vim ~/.vim-$(date +%Y%m%d)
mv ~/.vimrc ~/.vimrc-$(date +%Y%m%d)
```
Create new directory and execute install.sh script via curl :
```sh
mkdir ~/.vimnew
cd  ~/.vimnew
curl -sL https://git.io/vVQ2x |bash
```
This will output something like this :
```
Apthogen::Incubate
Apthogen::Infection
Propagate::Required
Install module from https://github.com/tpope/vim-pathogen
Install module from https://github.com/tpope/vim-sensible
[...]
```
You can import more modules after installation like this :
```
./install.sh
```
This will output the module import menu :
```
Import modules ?
[M]inimal (Default)
[H]ighly Recomended
[R]ecomended
[W]hynot
[A]ll (May take a while)
[C]ancel
Enter your choice and press [Enter]:   R
```
Link new installation :
```sh
ln -s ~/.vimnew ~/.vim
ln -s ~/.vimnew/.vimrc ~/.vimrc
```
Test it :
```sh
vim -u ~/.vimnew/.vimrc

:scriptnames
```
Or
```sh
vim -u ~/.vimnew/.vimrc +Project
```
## Manage plugins
You can manage plugins easily w/ module script :
```
./module 
Usage :
./module {install|remove|enable|disable|update|upgrade|list|search}
```
### Install
Install plugin in bundle-availlable
```sh
./module install url_of_git_repository
```
### Remove
Disable plugin and remove it from bundle-availlable
```sh
./module remove module_name
```
### Enable
Link module from bundle-avallable to bundle to activate it
```sh
./module enable module_name
```
### Disable
Unlink module from bundle
```sh
./module disable module_name
```
### Update
Update module list w/ module or all availlable modules
```sh
./module update <module_name>
```
### Upgrade
Update module or all availlable modules from github
```sh
./module enable <module name>
```
### List
List of indexed modules
```sh
./module list
```
### Search
Search a pattern in module list
```sh
./module search pattern
```
### Import
Install and enable modules from modules list (used for installation purpose)
```sh
./module import
```
## List of vim modules used : 
### Required :
* https://github.com/tpope/vim-pathogen
* https://github.com/tpope/vim-sensible
* https://github.com/shemerey/vim-project
* https://github.com/nvie/vim-togglemouse
* https://github.com/Shougo/vimproc.vim
* https://github.com/Shougo/vimshell.vim

### Highly Recomended :
* https://github.com/tpope/vim-eunuch
* https://github.com/tpope/vim-fugitive
* https://github.com/bling/vim-airline
* https://github.com/mhinz/vim-signify
* https://github.com/scrooloose/nerdtree
* https://github.com/scrooloose/syntastic
* https://github.com/motemen/git-vim
* https://github.com/mricon/puppet-eyes
* https://github.com/majutsushi/tagbar
* https://github.com/vim-scripts/taglist.vim
* https://github.com/vim-scripts/TaskList.vim

### Recomended :
* https://github.com/tmatilai/gitolite.vim
* https://github.com/puppetlabs/puppet-syntax-vim
* https://github.com/shawncplus/phpcomplete.vim
* https://github.com/klen/python-mode
* https://github.com/jmcantrell/vim-virtualenv
* https://github.com/vim-perl/vim-perl
* https://github.com/vim-ruby/vim-ruby
* https://github.com/empanda/vim-varnish
* https://github.com/othree/html5.vim

### Why Not ?
* https://github.com/Lokaltog/vim-powerline
* https://github.com/joonty/vdebug
* https://github.com/flazz/vim-colorschemes
* https://github.com/vim-scripts/TeTrIs.vim
