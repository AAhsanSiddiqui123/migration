\echo Use "CREATE EXTENSION dbe-svc-local" to load this file. \quit
UPDATE meta_public.domains SET domain = 'localhost' WHERE domain = 'dbe.la';