#!/bin/bash

proj_path='/home/kuntal_rs/projects'
datetime=$(date '+%Y-%m-%d%H:%M:%S')
cd $proj_path
arti_repos_dir='startup'
arti_dir='artifacts'
git_repos_url='https://github.com/kuntal1984'

git clone $git_repos_url/$arti_repos_dir.git

cp -ar $proj_path/$arti_repos_dir/* $proj_path/$arti_dir/

mv  $proj_path/$arti_repos_dir/ $proj_path/$arti_repos_dir_$datetime/
