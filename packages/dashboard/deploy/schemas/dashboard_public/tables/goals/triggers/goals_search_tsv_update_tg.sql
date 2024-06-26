-- Deploy: schemas/dashboard_public/tables/goals/triggers/goals_search_tsv_update_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_private/trigger_fns/goals_search_tsv

BEGIN;
CREATE TRIGGER goals_search_tsv_update_tg 
 BEFORE UPDATE ON "dashboard_public".goals 
 FOR EACH ROW 
 WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.tags IS DISTINCT FROM NEW.tags OR OLD.sub_head IS DISTINCT FROM NEW.sub_head) 
 EXECUTE PROCEDURE "dashboard_private".goals_search_tsv ( );
COMMIT;
