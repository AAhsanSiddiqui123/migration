-- Revert: schemas/dashboard_public/tables/user_questions/columns/is_private/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN is_private;
COMMIT;  

