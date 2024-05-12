-- Revert: schemas/dashboard_public/tables/user_answers/columns/numeric/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers DROP COLUMN "numeric";
COMMIT;  

