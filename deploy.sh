#!/usr/bin/env bash

#保存文件
mkdir ./tmp
mv ./public/CNAME ./tmp/CNAME
mv ./public/README.md ./tmp/README.md
mv ./public/books ./tmp/books

#清理项目
hexo clean

#构建项目
hexo generate

#移回文件
mv ./tmp/* ./public/
rm -rf ./tmp

#发布项目
hexo deploy
