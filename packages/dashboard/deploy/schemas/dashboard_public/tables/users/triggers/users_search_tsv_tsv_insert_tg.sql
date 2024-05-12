-- Deploy: schemas/dashboard_public/tables/users/triggers/users_search_tsv_tsv_insert_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_private/trigger_fns/users_search_tsv_tsv

BEGIN;
CREATE TRIGGER users_search_tsv_tsv_insert_tg 
 BEFORE INSERT ON "dashboard_public".users 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".users_search_tsv_tsv ( );
COMMIT;
