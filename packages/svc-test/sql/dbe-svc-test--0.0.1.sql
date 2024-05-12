\echo Use "CREATE EXTENSION dbe-svc-test" to load this file. \quit
UPDATE meta_public.domains AS d SET subdomain = concat(d.subdomain, '.test') WHERE domain = 'dbe.la';