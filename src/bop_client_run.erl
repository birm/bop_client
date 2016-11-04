-module(bop_client_run).
-behaviour(application).

% for this, it's important to understand that the application gets everything together, accumulates it, then runs it
% things are added, not ran, on verification. This handles both adding and running

run_new(Request) -> % handle a request to run something
  'todo'.

run_getpre(Request, Scheme) -> % get precondition test
  'todo'.

run_getlog(Request, Scheme) -> % get log action
  'todo'.

run_add(Post, Mykey) -> % add to list of things to do
  'todo'.

run_lightit(Scheme) -> % run everything collected
  'todo'.
