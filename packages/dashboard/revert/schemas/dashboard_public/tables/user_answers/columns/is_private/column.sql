-- Revert: schemas/dashboard_public/tables/user_answers/columns/is_private/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers DROP COLUMN is_private;
COMMIT;  

