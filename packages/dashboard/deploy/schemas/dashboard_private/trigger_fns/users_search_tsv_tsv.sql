-- Deploy: schemas/dashboard_private/trigger_fns/users_search_tsv_tsv to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".users_search_tsv_tsv ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
BEGIN
NEW.search_tsv = (setweight(to_tsvector('pg_catalog.simple', COALESCE(NEW.display_name, '')), 'B') || setweight(to_tsvector('pg_catalog.simple', COALESCE(NEW.username, '')), 'A'));
RETURN NEW;
END; 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
