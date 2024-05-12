-- Revert: schemas/dashboard_public/tables/action_goals/columns/id/alterations/alt0000000783 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

