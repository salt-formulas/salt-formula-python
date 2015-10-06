
======
Python
======

Python is a widely used general-purpose, high-level programming language. Its design philosophy emphasizes code readability, and its syntax allows programmers to express concepts in fewer lines of code than would be possible in languages such as C++ or Java. The language provides constructs intended to enable clear programs on both a small and large scale.

Python supports multiple programming paradigms, including object-oriented, imperative and functional programming or procedural styles. It features a dynamic type system and automatic memory management and has a large and comprehensive standard library.

Available states
================

.. contents::
    :local:

``python``
----------

Install defined packages.

``python.environment``
----------------------

Also install defined packages.

Available metadata
==================

.. contents::
    :local:

``service.environment``
-----------------------

Basic Python environment

``service.environment.development``
-----------------------------------

Development Python environment.

``python.environment.django``
-----------------------------

Python Django environment.

Sample pillars
==============

Simple Python environment

.. code-block:: yaml

    python:
      environment:
        enabled: true

Development Python environment

.. code-block:: yaml

    python:
      environment:
        enabled: true
        module:
          development: true

Python django environment

.. code-block:: yaml

    python:
      environment:
        enabled: true
        module:
          django: true

Read more
=========

* https://www.python.org/
