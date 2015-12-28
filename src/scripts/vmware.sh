#!/bin/bash
#
# -----------------------------------------------------------------------------
#
# A simple script to a base image
#
# -----------------------------------------------------------------------------
#
# The MIT License (MIT)
#
# Copyright (c) 2015 Werner Strydom
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# -----------------------------------------------------------------------------

# --- Body --------------------------------------------------------------------

echo ""
echo ""
echo ""
echo "-----------------------------------------------------------------------------"
echo " Installing VMWare Tools"
echo "-----------------------------------------------------------------------------"
apt-get -y update
wget http://packages.vmware.com/tools/keys/VMWARE-PACKAGING-GPG-RSA-KEY.pub
apt-key add VMWARE-PACKAGING-GPG-RSA-KEY.pub
apt-get -y install python-software-properties
apt-get -y update
apt-add-repository -y 'deb http://packages.vmware.com/tools/esx/6.0u1/ubuntu precise main'
apt-get -y update
apt-get -y install vmware-tools-esx-nox