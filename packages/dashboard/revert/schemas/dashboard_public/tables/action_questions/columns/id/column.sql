-- Revert: schemas/dashboard_public/tables/action_questions/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions DROP COLUMN id;
COMMIT;  

