-module(bop_client_log).
-export([log_handle/2]).
-behaviour(application).

% may need global log level set somewhere

log_handle(Type, List) -> % handle log information in
  % regard to a global log level
  % if log level includes this type
  log_accumulate(List).

log_accumulate(Log) -> % process log information on client
  Buffer = Log. % keep a certain amount of logs in a buffer
  % when the buffer is ready
  log_reduce(Buffer). % send the list buffer to the reduce
  Buffer = []. % clear buffer somehow

log_reduce(Loglist) -> % simplify log messages to be useful
  % bypass for certain log levels
  % write to separate local file too for certain log levels
  % how many have same type
  % how many are close in time to each other
  % if more than a few same type, close in time, close in text, merge
  % output a summary of the merge in place
  log_out(MinList).


log_out(Loglist) -> % send logs to file read by com_logs and sent out to server
  % wait until the file is non mutexed
  % add each item in the list to a file
