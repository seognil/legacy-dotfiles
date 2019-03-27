# * ---------------- 

iife () {
  n_p="localhost, 127.0.0.1, 0.0.0.0"
  n_p="$n_p, verdaccio.21epub.com"
  n_p="$n_p, taobao.org"
  n_p="$n_p, aliyun.com"
  export no_proxy=$n_p
}
iife

# * ---------------- 

function echoCurrentProxy() {
  echo 'proxy'
}

currentPath=$(cd `dirname $0` && pwd)

sslocalproxy='http://127.0.0.1:1080'

deadproxy="http://dead.link/"

function proxy() {

  if [[ $1 == '' || $1 == 'get' ]] {
    echoCurrentProxy
  } elif [[ $1 == 'on' ]] {
    export http_proxy=$sslocalproxy
    export https_proxy=$sslocalproxy
    echoCurrentProxy
  } elif [[ $1 == 'off' ]] {
    unset http_proxy https_proxy
    echoCurrentProxy
  } elif [[ $1 == 'dead' ]] {
    export http_proxy=$deadproxy
    export https_proxy=$deadproxy
    echoCurrentProxy
  } elif [[ $1 == 'set' ]] {
    replacer="s/^\s*sslocalproxy=.*$/sslocalproxy='http:\/\/$2'/g"
    sed -i.bak $replacer $currentPath/proxy.zsh
    rm -rf $currentPath/proxy.zsh.bak
    source $currentPath/proxy.zsh
    proxy on
  } else {
    echo -e '\033[31m error \033[0  m Invalid subcommand. Try "on, off, set, get, dead"'
  }
}

# proxy on

function echoCurrentProxy() {
  echo 'http_proxy: ' $http_proxy
  echo 'https_proxy: ' $https_proxy
}


# * ---------------- 
