#!/usr/bin/env bash

#purge-install.sh

# Version 1.0.1

## in case an older version of puppet is installed, remove it

#The MIT License (MIT)
#
#Copyright (c) [2016] [Caspar Computer Services Inc.]
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

function versionCheck {

    version=$("puppet" --version >&1 | awk -F '"' '{print $1}')

    echo Current Version is "$version"

    if [[ "$version" < "4" ]]
     then

        apt-get purge puppet -y
        rm /etc/puppet -rf
        apt-get autoremove -y


    else

        echo "Old puppet does not exist so it does not need to be removed"

    fi



    ## install now

    apt-get install wget
    wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
    dpkg -i puppetlabs-release-pc1-trusty.deb
    apt-get update

    # install new puppet agent now...
    apt-get install puppet-agent -y

}


versionCheck


