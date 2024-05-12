-- Revert: schemas/dashboard_public/tables/form_questions/columns/form_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions DROP COLUMN form_id;
COMMIT;  

