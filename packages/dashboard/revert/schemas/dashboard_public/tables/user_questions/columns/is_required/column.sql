-- Revert: schemas/dashboard_public/tables/user_questions/columns/is_required/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN is_required;
COMMIT;  

