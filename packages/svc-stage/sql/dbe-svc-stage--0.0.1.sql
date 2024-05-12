\echo Use "CREATE EXTENSION dbe-svc-stage" to load this file. \quit
UPDATE meta_public.domains AS d SET subdomain = concat(d.subdomain, '.stage') WHERE domain = 'dbe.la';