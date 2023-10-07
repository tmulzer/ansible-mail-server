user = vmail
password = {{ vmail_pass }}
hosts = 127.0.0.1
dbname = vmail
query = SELECT DISTINCT concat(destination_username, '@', destination_domain) AS destinations FROM aliases WHERE (source_username = '%u' OR source_username IS NULL) AND source_domain = '%d' AND enabled = true AND NOT EXISTS (SELECT id FROM accounts WHERE username = '%u' and domain = '%d');
