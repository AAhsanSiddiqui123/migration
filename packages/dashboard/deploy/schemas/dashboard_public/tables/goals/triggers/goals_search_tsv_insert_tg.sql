-- Deploy: schemas/dashboard_public/tables/goals/triggers/goals_search_tsv_insert_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_private/trigger_fns/goals_search_tsv

BEGIN;
CREATE TRIGGER goals_search_tsv_insert_tg 
 BEFORE INSERT ON "dashboard_public".goals 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".goals_search_tsv ( );
COMMIT;
