-- Revert: schemas/dashboard_public/tables/user_answers/columns/checkbox/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers DROP COLUMN checkbox;
COMMIT;  

