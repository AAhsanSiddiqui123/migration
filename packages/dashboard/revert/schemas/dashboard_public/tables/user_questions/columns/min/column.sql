-- Revert: schemas/dashboard_public/tables/user_questions/columns/min/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN min;
COMMIT;  

