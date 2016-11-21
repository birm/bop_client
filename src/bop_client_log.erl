-module(bop_client_log).
-behaviour(application).

log_handle(Type, List) -> % handle log information in
  'todo'.

log_accumulate(Log, Severity) -> % process log information on client
  'todo'.

log_reduce(Loglist) -> % simplify log messages to be useful
  'todo'.

log_out(Loglist) -> % send logs to com and out to server
  'todo'.
