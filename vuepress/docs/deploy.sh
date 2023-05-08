#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd src/.vuepress/dist

git init
git remote add origin https://github.com/Arthur253896/Arthur253896.github.io.git
git add -A
git commit -m 'deploy'
# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git pull origin master
git push -f origin master

cd -