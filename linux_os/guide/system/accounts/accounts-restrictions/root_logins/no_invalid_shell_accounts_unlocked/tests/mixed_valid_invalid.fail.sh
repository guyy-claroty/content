#!/bin/bash
# remediation = none

{
echo "validuser:x:1001:1001:validuser:/home/validuser:/bin/bash"
echo "invaliduser:x:1002:1002:invaliduser:/home/invaliduser:/bin/dash"
} >> /etc/passwd

{
echo 'validuser:$6$exIFis0tobKRcGBk$b.UR.Z8h96FdxJ1bgA/vhdnp0Lsm488swdILNguQX/5qH5hdmClyYb5xk3TpELXWzr4JOiTlHfRkPsXSjMPjv0:20111:0:99999:7:::'
echo 'invalidduser:$6$exIFis0tobKRcGBk$b.UR.Z8h96FdxJ1bgA/vhdnp0Lsm488swdILNguQX/5qH5hdmClyYb5xk3TpELXWzr4JOiTlHfRkPsXSjMPjv0:20111:0:99999:7:::'
} >> /etc/shadow

echo "/bin/bash" >> /etc/shells
