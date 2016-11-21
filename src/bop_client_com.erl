-module(bop_client_com).
-behaviour(application).

com_in(Request) -> % handle com incoming from server
  'todo'.

com_out(Request) -> % handle com to server
  'todo'.

com_run(To, From, Myid, SrvPub) -> % hand off operation to runner
  'todo'.

com_logs(Request, Mykey) -> % handle log communication
  'todo'.
