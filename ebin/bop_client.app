{application, bop_client,
 [{description, "Client Application to Handle BOP method."},
  {vsn, "0.0.1"},
  {modules, [bop_client_log,
	     bop_client_com,
	     bop_client_run]},
  {registered, [bop_client]},
  {applications, [kernel, stdlib]},
  {mod, {bop_client, []}}
  ]}.
