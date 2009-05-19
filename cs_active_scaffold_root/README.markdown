Purpose
=======

Installation
============
Postgresql (if you like)
------------------------
### Install your postgres server & client
    sudo apt-get install postgresql-client postgresql postgresql-server-dev-8.3
    sudo su -c "createuser yourlinuxname --superuser -P" -- postgres
    createdb
    createuser deployer --createdb -P
Set the password as sharedpass for given database.yml to work straight away

### Changing postgres passwords later
If you set the wrong password for deployer
    psql
        ALTER ROLE deployer WITH PASSWORD sharedpass;

Install project plugins and gems
-----------------------------------
    cd <ProjectRoot>
    sudo rake gems:install
    rake cs:plugin:install
    cp config/sample_database.yml config/database.yml
    <edit> config/database.yml

Prepare the data
----------------
    rake db:create:all
    rake db:migrate
    rake db:populate

Update later
============
git pull
git submodule update