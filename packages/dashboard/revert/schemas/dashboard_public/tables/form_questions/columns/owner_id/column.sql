-- Revert: schemas/dashboard_public/tables/form_questions/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions DROP COLUMN owner_id;
COMMIT;  

