# Online Payroll Calculator

This project uses a ruby 1.9.2 command 'to_date'.  Heroku's default ruby is 1.8.7.  

$ heroku stack
  aspen-mri-1.8.6
* bamboo-ree-1.8.7
  bamboo-mri-1.9.2

To upgrade to the application's ruby to 1.9.2, run the command below (see full instructions here http://devcenter.heroku.com/articles/stack).

$ heroku stack:migrate bamboo-mri-1.9.2
-----> Preparing to migrate calc-example
       bamboo-ree-1.8.7 -> bamboo-mri-1.9.2

       NOTE: You must specify ALL gems (including Rails) in manifest

       Please read the migration guide:
       http://docs.heroku.com/bamboo

-----> Migration prepared.
       Run 'git push heroku master' to execute migration.

$ heroku stack
  aspen-mri-1.8.6
* bamboo-ree-1.8.7
  bamboo-mri-1.9.2 (prepared, will migrate on next git push)

Now git push a change.  After that, the ruby version will be 1.9.2. 






