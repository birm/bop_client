-module(bop_client_run).
-behaviour(application).

% for this, it's important to understand that the application gets everything together, accumulates it, then runs it
% things are added, not ran, on verification. This handles both adding and running


run_pre(Request, Scheme) -> % get precondition test
  'todo'.

run_post(Request, Scheme) -> % get post-action test, call undo if failed
  'todo'.

run_undo(Request, Scheme) -> % send undo instruction
  'todo'.

run_add(Post, Mykey) -> % add to queue
  'todo'.

run_go(Scheme) -> % run from queue
  'todo'.
