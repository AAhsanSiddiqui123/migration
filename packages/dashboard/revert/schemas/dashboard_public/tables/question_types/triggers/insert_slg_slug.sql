-- Revert: schemas/dashboard_public/tables/question_types/triggers/insert_slg_slug from pg

BEGIN;
DROP TRIGGER insert_slg_slug ON "dashboard_public".question_types;
COMMIT;  

