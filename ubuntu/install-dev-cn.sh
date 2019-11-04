#!/bin/sh

bash ./progress/install-basic.sh

bash ./diff/change-source-cn.sh

bash ./progress/install-system.sh

bash ./diff/change-npm-cn.sh

bash ./progress/install-npm.sh
bash ./progress/after-test.sh
