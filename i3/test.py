#!/usr/bin/env python
import subprocess
var = subprocess.Popen(['/home/kat/.config/i3/battery.sh'], stdout=subprocess.PIPE)
output = var.stdout.read()
output = output[:-1]
print(output)
