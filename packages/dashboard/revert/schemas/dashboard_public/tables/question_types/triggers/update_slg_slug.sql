-- Revert: schemas/dashboard_public/tables/question_types/triggers/update_slg_slug from pg

BEGIN;
DROP TRIGGER update_slg_slug ON "dashboard_public".question_types;
COMMIT;  

