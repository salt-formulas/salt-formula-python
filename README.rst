
==============
Usage
==============

Python is a widely used general-purpose, high-level programming language.
Its design philosophy emphasizes code readability, and its syntax allows
programmers to express concepts in fewer lines of code than would be
possible in languages such as C++ or Java. The language provides constructs
intended to enable clear programs on both a small and large scale.

Python supports multiple programming paradigms, including object-oriented,
imperative and functional programming or procedural styles. It features a
dynamic type system and automatic memory management and has a large and
comprehensive standard library.

Available metadata
==================

* ``service.environment.environment``
   Basic Python environment

* ``service.environment.development``
   Python development environment

* ``python.environment.django``
   Python Django environment

Sample pillars
==============

Simple Python environment:

.. code-block:: yaml

    python:
      environment:
        enabled: true

Development Python environment:

.. code-block:: yaml

    python:
      environment:
        enabled: true
        module:
          development: true

Python django environment:

.. code-block:: yaml

    python:
      environment:
        enabled: true
        module:
          django: true

Using offline mirrors:

.. code-block:: yaml

    python:
      environment:
        enabled: true
        user:
          root:
            pypi_user: user
            pypi_password: password
            pypi_mirror:
              protocol: http
              host: pypi.local
              port: 8084
              upstream_fallback: true
              user: user
              password: password

Read more
=========

* https://www.python.org/

Documentation and Bugs
======================

* http://salt-formulas.readthedocs.io/
   Learn how to install and update salt-formulas

* https://github.com/salt-formulas/salt-formula-python/issues
   In the unfortunate event that bugs are discovered, report the issue to the
   appropriate issue tracker. Use the Github issue tracker for a specific salt
   formula

* https://launchpad.net/salt-formulas
   For feature requests, bug reports, or blueprints affecting the entire
   ecosystem, use the Launchpad salt-formulas project

* https://launchpad.net/~salt-formulas-users
   Join the salt-formulas-users team and subscribe to mailing list if required

* https://github.com/salt-formulas/salt-formula-python
   Develop the salt-formulas projects in the master branch and then submit pull
   requests against a specific formula

* #salt-formulas @ irc.freenode.net
   Use this IRC channel in case of any questions or feedback which is always
   welcome

