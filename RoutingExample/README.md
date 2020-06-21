
To know about lab.conf [kathara lab.conf](kathara.org/man-pages/kathara-lab.conf.5.html)

### Important commands
- `device[arg]=value`
- `image`
- `mem`
- `cpus`
- `port`
- `bridged`
- `exec`
- `systcl`

### Example of Kathara lab.conf
```
# meta information
LAB_DESCRIPTION="A sample example of lab.conf"
LAB_VERSION=1.0
LAB_AUTHOR="Kathara Authors"
LAB_EMAIL="contact@email.com
LAB_WEB=http:web.com

r1[0]="A"
r1[1]="B"
r1[port]=32000
r1[image]="namespace/image_name"
r1[sysctl]="net.ipv6.conf.all.forwarding=1"

r2[0]="C"
r2[1]="B"
r2[exec]="echo hi"

pc1[0]="A"
pc1[bridge]=true

pc2[0]="C"
pc2[mem]=128m

```


