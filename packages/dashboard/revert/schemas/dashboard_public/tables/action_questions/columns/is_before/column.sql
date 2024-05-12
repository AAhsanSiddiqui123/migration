-- Revert: schemas/dashboard_public/tables/action_questions/columns/is_before/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions DROP COLUMN is_before;
COMMIT;  

