-- Revert: schemas/dashboard_public/tables/action_questions/columns/id/alterations/alt0000001208 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

