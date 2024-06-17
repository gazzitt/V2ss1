mv -vn /etc/x-ui2/x-ui.db /etc/x-ui/x-ui.db
cd /home/x-ui
service nginx start && ./x-ui
