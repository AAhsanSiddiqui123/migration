-- Revert: schemas/dashboard_public/tables/form_questions/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions DROP COLUMN id;
COMMIT;  

