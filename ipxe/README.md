#ipxe

This can be used to build a custom ipxe iso. You will need git, and docker 
or podman. Next create a config which has at least this:

    #!ipxe
    dhcp
    boot http://my.custom.location/default.ipxe

Next you can save that file as `my_config.ipxe` then use the build_iso.sh 
script to build the iso.

    ./build_iso.sh my_config.ipxe


That will either emit an error message about missing prerequisites, or 
build an ISO and tell you where it is at.
