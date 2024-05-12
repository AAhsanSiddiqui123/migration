-- Revert: schemas/dashboard_public/tables/form_questions/columns/is_required/column from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions DROP COLUMN is_required;
COMMIT;  

