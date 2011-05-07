# Online Payroll Calculator

This project uses a ruby 1.9.2 command 'to_date'.  Heroku's default ruby is 1.8.7.

\$ heroku stack
    aspen-mri-1.8.6
 \* bamboo-ree-1.8.7
    bamboo-mri-1.9.2

To upgrade to the application's ruby to 1.9.2, run the command below (see full instructions here http://devcenter.heroku.com/articles/stack).

> $ heroku stack:migrate bamboo-mri-1.9.2
> -----> Preparing to migrate calc-example
>        bamboo-ree-1.8.7 -> bamboo-mri-1.9.2
>
>        NOTE: You must specify ALL gems (including Rails) in manifest
>
>        Please read the migration guide:
>        http://docs.heroku.com/bamboo
>
> -----> Migration prepared.
>        Run 'git push heroku master' to execute migration.
>
> $ heroku stack
>   aspen-mri-1.8.6
> * bamboo-ree-1.8.7
>   bamboo-mri-1.9.2 (prepared, will migrate on next git push)
>
> Now git push a change and git heroic push.
>
> $ git push
>
> $ heroku stack
>   aspen-mri-1.8.6
> * bamboo-ree-1.8.7
>   bamboo-mri-1.9.2 (prepared, will migrate on next git push)
>
> $ git push heroku master
> Counting objects: 4, done.
> Delta compression using up to 8 threads.
> Compressing objects: 100% (3/3), done.
> Writing objects: 100% (3/3), 756 bytes, done.
> Total 3 (delta 1), reused 0 (delta 0)
>
> -----> Heroku receiving push
> -----> Migrating from bamboo-ree-1.8.7 to bamboo-mri-1.9.2
>
> -----> Sinatra app detected
> -----> Gemfile detected, running Bundler version 1.0.7
>        Unresolved dependencies detected; Installing...
>        Using --without development:test
>        Fetching git://github.com/beeman88/Mygem.git
>        Fetching source index for http://rubygems.org/
>        Using calculatorgem (0.0.1) from git://github.com/beeman88/Mygem.git (at master)
>        Installing rack (1.2.2)
>        Installing tilt (1.2.2)
>        Installing sinatra (1.2.2)
>        Using bundler (1.0.7)
>        Your bundle is complete! It was installed into ./.bundle/gems/
>        Compiled slug size is 444K
> -----> Launching... done
>        http://calc-example.heroku.com deployed to Heroku
>
> -----> Migration complete, your app is now running on bamboo-mri-1.9.2
>
> To git@heroku.com:calc-example.git
>    95519d6..1c36bc8  master -> master
>
> $ heroku stack
>   aspen-mri-1.8.6
>   bamboo-ree-1.8.7
> * bamboo-mri-1.9.2







