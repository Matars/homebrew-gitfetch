#!/bin/bash

: "${VERSION:?VERSION is not set}"

# Detect OS for sed compatibility
if [[ "$OSTYPE" == "darwin"* ]]; then
  SED_INPLACE="sed -i ''"
else
  SED_INPLACE="sed -i"
fi

SHASUM=$(curl -sL "https://github.com/Matars/gitfetch/archive/refs/tags/v${VERSION}.tar.gz" | shasum -a 256 | awk '{print $1}')

# Detect OS for sed compatibility
if [[ "$OSTYPE" == "darwin"* ]]; then
  SED_INPLACE="sed -i ''"
else
  SED_INPLACE="sed -i"
fi

SHASUM=$(curl -sL "https://github.com/Matars/gitfetch/archive/refs/tags/v${VERSION}.tar.gz" | shasum -a 256 | awk '{print $1}')

$SED_INPLACE '6s/.*/  url "https:\/\/github.com\/Matars\/gitfetch\/archive\/refs\/tags\/v'${VERSION}'.tar.gz"/' Formula/gitfetch.rb
$SED_INPLACE '7s/.*/  sha256 "'${SHASUM}'"/' Formula/gitfetch.rb

CERTIFI_SHASUM=$(curl -sL "https://files.pythonhosted.org/packages/4c/5b/b6ce21586237c77ce67d01dc5507039d444b630dd76611bbca2d8e5dcd91/certifi-2025.10.5.tar.gz" | shasum -a 256 | awk '{print $1}')
$SED_INPLACE '14s/.*/    sha256 "'${CERTIFI_SHASUM}'"/' Formula/gitfetch.rb

CHARSET_NORMALIZER_SHASUM=$(curl -sL "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz" | shasum -a 256 | awk '{print $1}')
$SED_INPLACE '19s/.*/    sha256 "'${CHARSET_NORMALIZER_SHASUM}'"/' Formula/gitfetch.rb

IDNA_SHASUM=$(curl -sL "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz" | shasum -a 256 | awk '{print $1}')
$SED_INPLACE '24s/.*/    sha256 "'${IDNA_SHASUM}'"/' Formula/gitfetch.rb

READCHAR_SHASUM=$(curl -sL "https://files.pythonhosted.org/packages/dd/f8/8657b8cbb4ebeabfbdf991ac40eca8a1d1bd012011bd44ad1ed10f5cb494/readchar-4.2.1.tar.gz" | shasum -a 256 | awk '{print $1}')
$SED_INPLACE '29s/.*/    sha256 "'${READCHAR_SHASUM}'"/' Formula/gitfetch.rb

REQUESTS_SHASUM=$(curl -sL "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz" | shasum -a 256 | awk '{print $1}')
$SED_INPLACE '34s/.*/    sha256 "'${REQUESTS_SHASUM}'"/' Formula/gitfetch.rb

URLLIB3_SHASUM=$(curl -sL "https://files.pythonhosted.org/packages/15/22/9ee70a2574a4f4599c47dd506532914ce044817c7752a79b6a51286319bc/urllib3-2.5.0.tar.gz" | shasum -a 256 | awk '{print $1}')
$SED_INPLACE '39s/.*/    sha256 "'${URLLIB3_SHASUM}'"/' Formula/gitfetch.rb

# Clean up backup files created by sed on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
  rm -f "Formula/gitfetch.rb''"
fi
