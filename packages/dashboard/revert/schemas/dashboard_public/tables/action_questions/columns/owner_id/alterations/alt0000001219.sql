-- Revert: schemas/dashboard_public/tables/action_questions/columns/owner_id/alterations/alt0000001219 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

