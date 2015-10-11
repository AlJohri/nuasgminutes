import re

with open("all.txt") as f:
	text = f.read()

resolution_legislation = re.compile(r"((?:SR|SL)\d{4}-\d{2})(?::)? (.*)")

for x in resolution_legislation.findall(text):
	print x

print "-------------"

