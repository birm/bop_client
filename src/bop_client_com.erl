-module(bop_client_com).
-behaviour(application).

com_in(Request) -> % handle com incoming from server
  'todo'.

com_verify(To, From, Myid, SrvPub) -> % verify identities with server
  'todo'.

com_dec(Request, Mykey) -> % decrypt communication
  'todo'.

com_enc(Post, Mykey) -> % encrypt communication
  'todo'.
