# Shell built-in command
disown [-ar] [-h] [jobspec ...]
    remove each jobspec from the table of active jobs.

-a
    remove or mark all jobs
-r
    restrict operation to running job if no jobspec is supplied.
-h
    do not sent 'SIGHUP' to the job if the shell recerives a 'SIGHUP'
