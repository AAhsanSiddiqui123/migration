-- Revert: schemas/dashboard_public/tables/action_questions/columns/id/alterations/alt0000001209 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

