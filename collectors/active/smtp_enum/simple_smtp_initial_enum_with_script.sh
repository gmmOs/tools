nmap --script=smtp-enum-users --script-args=smtp-enum-users.methods={VRFY} -p 25,465,587 -iL smtp.list -oG smtp_VRFY_from_smtp.list.txt >> smtp_VRFY_from_smtp.list.response
