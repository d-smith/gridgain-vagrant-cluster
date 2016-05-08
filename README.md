## Three Node GridGain Cluster

This project contains a simple Vagrantfile for running a 3 node
GridGain cluster. It provisions each cluster member with docker and
pulls the GridGain community edition image, and provide a configuration file
with a multicast address to use for member discovery.

After starting the cluster members via vagrant up, vagrant ssh to each cluster
member (e.g. `vagrant ssh gg1`) and start the GridGain node:

<pre>
docker run -it --net=host -v /vagrant:/ignite -e "CONFIG_URI=file:///ignite/cache-config.xml" -e "OPTION_LIBS=ignite-rest-http" -p 8080:8080 -e "IGNITE_QUIET=false" gridgain/gridgain-com
</pre>

Note this installation assumes the following plugs are installed:

<pre>
vagrant plugin install vagrant-proxyconf
vagrant plugin install vagrant-hostmanager
</pre>
