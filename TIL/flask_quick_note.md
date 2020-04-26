# Some quick notes about Flask

## First thing first, create a virtual environment

`mkdir project_name && cd project_name`

`python3 -m venv env`

`. env/bin/activate`

## Install flask

`pip install flask`

## Organize folder structure depends on project's requirements

- Structure code files into folders: `config`, `main app`, `main app test`

## Blueprint

- The basic concept of blueprints is that they record operations to execute when registered on an application
- Blueprint can help us to separate modules/sub-system into different files, and later register them into our main flask-app.
- Microservices duh
- Read more at: https://flask.palletsprojects.com/en/1.1.x/blueprints/

## Config and logging

- Put all config into folder `config`
- Flask has built-in the logging mechanism of python
- Load logging setting file: `logging.config.fileConfig('{path_of_file}`)
- Display logging: `app.logger.info('Message here')`

## Unit test

- Use built-in library `unittest`
- Run unit test: `python3 -m unittest {file_name}`
- Tests are in Python modules that start with `test_`
- Each test function in those modules also starts with `test_`

## SQLAlchemy

- Install sqlalchemy: `pip install flask-sqlalchemy`
- Install mysql connector: `pip install mysqlclient pymysql`
- Setting sql connection in config file: `SQLALCHEMY_DATABASE_URI='mysql+pymysql://{db_user}:{db_password}@localhost:3306/{db_name}'`
- Use:
  ```
  from flask_sqlalchemy import SQLAlchemy
  db = SQLAlchemy()
  ```

## Marshmallow
- an ORM/ODM/framework-agnostic library for converting complex datatypes, such as objects, to and from native Python datatypes.
- Use:
  ```
  from flask_marshmallow import Marshmallow
  ma = Marshmallow()
  ```
- Read more at: https://marshmallow.readthedocs.io/en/stable/

## Swagger

- Install: `pip install flasgger apispec`
- Format comments in api
  ```
    """
    Item list
    ---
    tags:
        - warehouse
    description: Get all items in the store
    responses:
        200:
            description: list of items
            schema:
                $ref: '#/definitions/Items'
    """
  ```
- Setup swagger in file  `swagger.py`
  ```
  from flasgger import APISpec, Swagger
  def setup_swagger(app)
  ```
- Register in main app
