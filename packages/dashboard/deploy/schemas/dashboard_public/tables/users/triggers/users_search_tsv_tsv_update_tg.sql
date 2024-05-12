-- Deploy: schemas/dashboard_public/tables/users/triggers/users_search_tsv_tsv_update_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_private/trigger_fns/users_search_tsv_tsv

BEGIN;
CREATE TRIGGER users_search_tsv_tsv_update_tg 
 BEFORE UPDATE ON "dashboard_public".users 
 FOR EACH ROW 
 WHEN (OLD.username IS DISTINCT FROM NEW.username OR OLD.display_name IS DISTINCT FROM NEW.display_name) 
 EXECUTE PROCEDURE "dashboard_private".users_search_tsv_tsv ( );
COMMIT;
