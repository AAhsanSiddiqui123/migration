-- Deploy: schemas/dashboard_private/trigger_fns/actions_search_tsv to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;
CREATE FUNCTION "dashboard_private".actions_search_tsv ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
BEGIN
NEW.search = (setweight(to_tsvector('pg_catalog.english', COALESCE(array_to_string(NEW.tags::citext[], ' '), '')), 'B') || (setweight(to_tsvector('pg_catalog.simple', COALESCE(array_to_string(NEW.tags::citext[], ' '), '')), 'A') || (setweight(to_tsvector('pg_catalog.english', COALESCE(NEW.title, '')), 'B') || (setweight(to_tsvector('pg_catalog.simple', COALESCE(NEW.title, '')), 'A') || setweight(to_tsvector('pg_catalog.english', COALESCE(NEW.description, '')), 'C')))));
RETURN NEW;
END; 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
