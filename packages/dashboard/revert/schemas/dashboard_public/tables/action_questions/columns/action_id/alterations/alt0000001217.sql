-- Revert: schemas/dashboard_public/tables/action_questions/columns/action_id/alterations/alt0000001217 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

