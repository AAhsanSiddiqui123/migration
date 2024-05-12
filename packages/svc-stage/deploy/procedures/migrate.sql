-- Deploy procedures/migrate to pg


BEGIN;

UPDATE meta_public.domains d 
  SET subdomain = concat(d.subdomain, '.stage')
WHERE domain = 'dbe.la';

COMMIT;
