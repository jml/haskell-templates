=================
haskell-templates
=================

.. image:: https://circleci.com/gh/jml/haskell-templates/tree/master.svg?style=svg
    :target: https://circleci.com/gh/jml/haskell-templates/tree/master

`stack`_ templates that encode my opinion about how to run Haskell projects.

What's in here
==============

Each of the templates provides the following:

- a library where all of the code lives
- tests, using `tasty`_, with automatic discovery via `tasty-discover`_
- benchmarks, using `criterion`_

Still to do:

- sample tests using `hedgehog`_
- command-line pasing using `optparse-applicative`_


cli
---

A simple command-line tool.

api
---

An API server that uses servant, and provides:

- logging
- Prometheus metrics
- a simple HTML interface, styled with Bootstrap 4


How to use them
===============

.. code-block:: console

    $ stack new <your-project> path/to/cli

And then follow the instructions in the generated ``README.rst``

.. _`stack`: https://docs.haskellstack.org/en/stable/README/
.. _`tasty`: https://hackage.haskell.org/package/tasty
.. _`tasty-discover`: https://hackage.haskell.org/package/tasty-discover
.. _`criterion`: http://www.serpentine.com/criterion/
.. _`hedgehog`: https://hackage.haskell.org/package/hedgehog
.. _`optparse-applicative`: https://hackage.haskell.org/package/optparse-applicative
