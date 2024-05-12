-- Revert: schemas/dashboard_public/tables/user_questions/columns/default_value/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN default_value;
COMMIT;  

