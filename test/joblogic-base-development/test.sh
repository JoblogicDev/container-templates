#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
checkCommon

# Test Node.js installation
check "node" node --version
check "npm" npm --version

# Test Python installation  
check "python" python --version
check "pip" pip --version

# Test Git
check "git" git --version

# Test Docker
check "docker" docker --version

# Report results
reportResults