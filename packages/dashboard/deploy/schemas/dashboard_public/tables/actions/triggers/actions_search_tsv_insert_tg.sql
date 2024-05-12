-- Deploy: schemas/dashboard_public/tables/actions/triggers/actions_search_tsv_insert_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_private/trigger_fns/actions_search_tsv

BEGIN;
CREATE TRIGGER actions_search_tsv_insert_tg 
 BEFORE INSERT ON "dashboard_public".actions 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".actions_search_tsv ( );
COMMIT;
