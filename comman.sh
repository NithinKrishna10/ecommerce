[Unit]
Description=gunicorn daemon
After=network.target

[Service]
User=sammy
Group=www-data
WorkingDirectory=/home/ubuntu/blazestore/Django_ecommerce
ExecStart=/home/ubuntu/blazestore/myprojectenv/bin/gunicorn --access-logfile - --workers 3 --bind unix:/home/ubuntu/blazestore/Django_ecommerce.sock Django_ecommerce.wsgi:application

[Install]
WantedBy=multi-user.target




[Unit]
Description=gunicorn daemon
Requires=gunicorn.socket
After=network.target

[Service]
User=ubuntu
Group=www-data
WorkingDirectory=/home/ubuntu/myprojectdir/Django_ecommerce
ExecStart=/home/ubuntu/myprojectdir/myprojectenv/bin/gunicorn \
          --access-logfile - \
          --workers 3 \
          --bind unix:/run/gunicorn.sock \
          Django_ecommerce.wsgi:application

[Install]
WantedBy=multi-user.target







Warning: The unit file, source configuration file or drop-ins of gunicorn.service changed on disk. Run 'systemctl daemon-reload' to reload units.
● gunicorn.service - gunicorn daemon
     Loaded: loaded (/etc/systemd/system/gunicorn.service; disabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Thu 2023-03-09 10:56:29 UTC; 2h 20min ago
TriggeredBy: ● gunicorn.socket
   Main PID: 11186 (code=exited, status=3)

Mar 09 10:56:29 ip-172-31-8-35 gunicorn[11188]:   File "<frozen importlib._bootstrap>", line 973, in _find_and_load_unlocked
Mar 09 10:56:29 ip-172-31-8-35 gunicorn[11188]: ModuleNotFoundError: No module named 'Django_ecommerce'
Mar 09 10:56:29 ip-172-31-8-35 gunicorn[11188]: [2023-03-09 10:56:29 +0000] [11188] [INFO] Worker exiting (pid: 11188)
Mar 09 10:56:29 ip-172-31-8-35 gunicorn[11186]: [2023-03-09 10:56:29 +0000] [11186] [INFO] Shutting down: Master
Mar 09 10:56:29 ip-172-31-8-35 gunicorn[11186]: [2023-03-09 10:56:29 +0000] [11186] [INFO] Reason: Worker failed to boot.
Mar 09 10:56:29 ip-172-31-8-35 systemd[1]: gunicorn.service: Main process exited, code=exited, status=3/NOTIMPLEMENTED
Mar 09 10:56:29 ip-172-31-8-35 systemd[1]: gunicorn.service: Failed with result 'exit-code'.
Mar 09 10:56:29 ip-172-31-8-35 systemd[1]: gunicorn.service: Start request repeated too quickly.
Mar 09 10:56:29 ip-172-31-8-35 systemd[1]: gunicorn.service: Failed with result 'exit-code'.
Mar 09 10:56:29 ip-172-31-8-35 systemd[1]: Failed to start gunicorn daemon.