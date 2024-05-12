-- Revert: schemas/dashboard_public/tables/user_answers/columns/user_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers DROP COLUMN user_id;
COMMIT;  

