-- Revert: schemas/dashboard_public/tables/user_questions/columns/label/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN label;
COMMIT;  

