
# requirements to create a container
* Namespaces  
    * Chroot := changing root
    * CGroups := control groups

* Namespaces  
    * defines what a process can see.
        * limits what it can see on the host system
        ...
    in english, creates the container's personal space(its room in a house)
* created with syscalls
    * Unix Timesharing System
    * Process IDs
    * Mounts
    * Network
    * User IDs
    * InterProcess communication

# sources:
Containers from scratch
    https://www.youtube.com/watch?v=8fi7uSYlOdc

# extension for challenge:
run non system commands [Shouldn't be different?]