-- Deploy: schemas/dashboard_public/tables/question_types/triggers/insert_slg_ui_hint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/question_types/table
-- requires: schemas/dashboard_private/trigger_fns/question_types_slg_ui_hint

BEGIN;
CREATE TRIGGER insert_slg_ui_hint 
 BEFORE INSERT ON "dashboard_public".question_types 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".question_types_slg_ui_hint ( );
COMMIT;
