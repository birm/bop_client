-module(bop_client_sec).
-export([sec_enc/2]).
-behaviour(application).

sec_verify(To, From, Myid, SrvPub) -> % verify identities with server
  % open key database.
  % check against it

sec_dec(Request, Mykey) -> % decrypt communication
  'todo'.

sec_enc(Post, Mykey) -> % encrypt communication
  'todo'.
