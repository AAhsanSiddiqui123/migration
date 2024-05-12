-- Deploy: schemas/dashboard_public/tables/actions/triggers/actions_search_tsv_update_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_private/trigger_fns/actions_search_tsv

BEGIN;
CREATE TRIGGER actions_search_tsv_update_tg 
 BEFORE UPDATE ON "dashboard_public".actions 
 FOR EACH ROW 
 WHEN (OLD.description IS DISTINCT FROM NEW.description OR OLD.title IS DISTINCT FROM NEW.title OR OLD.tags IS DISTINCT FROM NEW.tags) 
 EXECUTE PROCEDURE "dashboard_private".actions_search_tsv ( );
COMMIT;
