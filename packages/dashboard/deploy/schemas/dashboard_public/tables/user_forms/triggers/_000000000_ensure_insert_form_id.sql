-- Deploy: schemas/dashboard_public/tables/user_forms/triggers/_000000000_ensure_insert_form_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_forms/table
-- requires: schemas/dashboard_private/trigger_fns/user_forms_denorm_form_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_form_id 
 BEFORE INSERT ON "dashboard_public".user_forms 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".user_forms_denorm_form_id ( );
COMMIT;
