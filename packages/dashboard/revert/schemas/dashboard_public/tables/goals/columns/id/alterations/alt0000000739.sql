-- Revert: schemas/dashboard_public/tables/goals/columns/id/alterations/alt0000000739 from pg

BEGIN;


ALTER TABLE "dashboard_public".goals 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

