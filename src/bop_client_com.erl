-module(bop_client_com).
-export([com_in/1, com_out/1 com_logs/2]).
-import(bop_client_sec, [sec_enc/2])
-import(bop_client_run, [run_add/2])
-behaviour(application).

com_in(Request) -> % handle com incoming from server
  ReqBody = Request. % strip any headers/routing info
  ReqTo = Request. % get what to do after
  com_run(ReqBody, ReqTo). % pass it off

com_out(Request) -> % handle com to server
  EncReq = sec_enc(Request, key).
  ReqTo = Request. % get what to do after
  send(EncReq, ReqTo). $ send to server

com_run(Request, To) -> % hand off operation to runner
  % split out each part of the request
  Post = Request. % format each so it can be added
  run_add(Post)/ % add it to the queue

com_logs(Request) -> % handle log communication
  LogBody = Request/ % format logs together
  com_out(LogBody)/
