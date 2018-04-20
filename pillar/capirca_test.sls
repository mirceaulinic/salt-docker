firewall:
 - my-filter:
     terms:
       - my-term:
           source_port: 1234
           source_address:
             - 1.2.3.4/32
             - 5.6.7.8/32
