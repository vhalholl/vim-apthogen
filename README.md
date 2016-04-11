#vim-apthogen
Just a bunch of config files and plugins for VIM

![img](https://blog.vhalholl.info/wp-content/uploads/2016/04/vim-config-1024x558.png)
## Installation :
Backup your initial vim configuration :
```sh
mv ~/.vim $_-$(date +%Y%m%d)
mv ~/.vimrc $_-$(date +%Y%m%d)
```
Create new directory and execute netinstall script via curl :
```sh
mkdir ~/.vimnew && cd  $_ &&curl -sL https://git.io/vVQ2x |bash
```
This will output something like this :
```
Apthogen::Incubate
Apthogen::Infection
Propagate::Required
Install module from https://github.com/tpope/vim-pathogen
[...]
```
You can import more modules after installation like this :
```
./netinstall
```
This will output the module import menu :
```
[S]lim               (Only Required Modules)     
[M]inimal            (Default)
[H]ighly Recomended  
[R]ecomended          
[W]hynot             
[A]ll                (Not Recomended For Testing Purpose)
[C]ancel
Enter your choice and press [Enter]:   R
```
Test it :
```sh
vim -u ~/.vimnew/.vimrc
:scriptnames
```
Link new installation :
```sh
ln -s ~/.vimnew ~/.vim
ln -s ~/.vimnew/.vimrc ~/.vimrc
```
## Manage plugins
You can manage plugins easily w/ module script :
```
./module 
Usage :
./aptogen {install|remove|enable|disable|update|upgrade|list|search}
```
### Install
Install plugin in bundle-availlable
```sh
./aptogen install url_of_git_repository
```
### Remove
Disable plugin and remove it from bundle-availlable
```sh
./aptogen remove module_name
```
### Enable
Link module from bundle-avallable to bundle to activate it
```sh
./aptogen enable module_name
```
### Disable
Unlink module from bundle
```sh
./aptogen disable module_name
```
### Update
Update module list w/ module or all availlable modules
```sh
./apthogen update <module_name>
```
### Upgrade
Update module or all availlable modules from github
```sh
./apthogen enable <module_name>
```
### List
List all indexed modules
```sh
./apthogen list
```
### Search
Search a pattern in module list
```sh
./apthogen search pattern
```
### Show 
Show informations about modules, act like 'apthogen help' if no argument
```sh
./apthogen show <pattern|module_name|url_git_repository>
```
### Help
This page
```sh
./apthogen help
```
### Import
Install and enable modules from modules list (used for installation purpose)
```sh
./module import
```
## List of vim modules used w/ netinstall : 
### Required :
* https://github.com/tpope/vim-pathogen

### Minimal
* https://github.com/tpope/vim-sensible
* https://github.com/shemerey/vim-project
* https://github.com/nvie/vim-togglemouse
* https://github.com/Shougo/vimproc.vim
* https://github.com/Shougo/vimshell.vim
* https://github.com/Raimondi/delimitMate
* https://github.com/Raimondi/delimitMate

### Highly Recomended :
Ensure Minimal Modules are installed
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
Ensure Highly Recomended Modules are installed
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
Ensure Recomended Modules are installed
* https://github.com/flazz/vim-colorschemes
* https://github.com/vim-scripts/TeTrIs.vim
