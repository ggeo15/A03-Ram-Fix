# Enable oom_kill_allocating_task 

This setting causes the system to immediately terminate the process that is trying to allocate memory when an Out of Memory (OOM) situation occurs. This reduces system response time in critical out-of-memory situations, improving stability and performance. 

# impact 

Improves memory management in memory exhaustion situations. Instead of looking for other processes to close, the system directly kills the one causing the allocation problem. 

# Disable overcommit_memory 

With this setting, the system only allows processes to allocate memory up to the actual available limit, without allowing overcommitment. A value of 0 instructs the kernel to check if there is available memory before allocating, which prevents crashes and OOM problems that occur when processes consume more memory than is physically available. 
