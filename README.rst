salt-docker
===========

A collection of Docker files and other script to easily manage my own Salt 
development environment.

Usage
-----

1. Clone this repo:

   .. code-block:: bash

     git clone git@github.com:mirceaulinic/salt-docker.git

2. Change dir:

   .. code-block:: bash

     cd salt-docker

3. Start using it:

   .. code-block:: bash

     make start

Example output:

.. code-block:: bash

  $ make PROXYID=dummy start
  docker-compose up -d
  Creating salt-proxy-dummy ...
  Creating salt-master ...
  Creating salt-proxy-dummy
  Creating salt-master ... done

Run a test state from the Master side:

.. code-block:: bash

  $ docker exec -it salt-master bash
  root@salt-master:/# salt dummy state.apply test
  dummy:
  ----------
            ID: Yay it works
      Function: test.succeed_without_changes
        Result: True
       Comment: Success!
       Started: 11:57:21.295204
      Duration: 0.76 ms
       Changes:

  Summary for dummy
  ------------
  Succeeded: 1
  Failed:    0
  ------------
  Total states run:     1
  Total run time:   0.760 ms
  root@salt-master:/# %
