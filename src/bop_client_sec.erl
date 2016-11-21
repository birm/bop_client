-module(bop_client_sec).
-behaviour(application).

sec_verify(To, From, Myid, SrvPub) -> % verify identities with server
  'todo'.

sec_dec(Request, Mykey) -> % decrypt communication
  'todo'.

sec_enc(Post, Mykey) -> % encrypt communication
  'todo'.
