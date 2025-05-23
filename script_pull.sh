#!/bin/bash

proj_path='/home/kuntal_rs/projects'
script_repos_dir='katacoda-scenarios'
script_dir='scripts'
script_fil='script.sh'
git_repos_url='https://github.com/kuntal1984'
datetime=$(date '+%Y-%m-%d%H:%M:%S')
script_flg='script_executed.flg'


if test -f $proj_path/$script_dir/$script_flg; then
     echo "File already exist! Do nothing @ "${datetime}
     
else
    cd $proj_path/$script_dir/ 
    git clone $git_repos_url/$script_repos_dir.git
        if  test -f $proj_path/$script_dir/$script_repos_dir/$script_fil; then
                chmod +x $proj_path/$script_dir/$script_repos_dir/$script_fil
                sh  $proj_path/$script_dir/$script_repos_dir/$script_fil
                mv  $proj_path/$script_dir/$script_repos_dir/  $proj_path/$script_dir/${script_repos_dir}_${datetime}/
		touch $proj_path/$script_dir/$script_flg
                echo "artifacts pulled from repository @ "${datetime}
	fi
 
fi	
