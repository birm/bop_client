-module(bop_client_run).
-export([run_add/1]).
-import(bop_client_log, [log_handle/2])
-behaviour(application).

% for this, it's important to understand that the application gets everything together, accumulates it, then runs it
% things are added, not ran, on verification. This handles both adding and running

% NOTE
% changes here are not reflected in the architectural diagram

run_pre(Request, Scheme) -> % get precondition test
  % handle like precondition test
  % ensure that shell is read only, essentially
  % if it passes, ok
  % if it fails, log
  BadReq = Scheme. % get the assciated request from the scheme
  run_remove(BadReq). % if it fails, remove associated item from queue

run_post(Request, Scheme) -> % get post-action test, call undo if failed
  % handle like postcondition test
  % ensure that shell is read only, essentially
  % if it passes, ok
  % if it fails, log
  run_undo(Request, Scheme). % if it fails, add associated undo to queue

run_standard(Request, Scheme)  -> % run in readwrite
  % ensure that shell is in appropriate mode (can act, maybe in chroot?)
  % if it passes, ok
  % if it fails, log

run_undo(Request, Scheme) -> % send undo instruction
  % handle issues with this, but ...
  % strip out what to run to undo
  UndoPost = Request.
  run_add(UndoPost)

run_add(Post) -> % add to queue
  % make sure queue is ok
  % it not, oh no!
  % if so, add this to the queue

run_remove(Post) -> % add to queue
  % make sure queue is ok
  % it not, oh no!
  % if so, remove this from the queue

run_go() -> % run from queue
  % make sure queue is ok
  % it not, oh no!
  % if so, fetch one thing
  % which request type is it?
  % call the appropriate function
