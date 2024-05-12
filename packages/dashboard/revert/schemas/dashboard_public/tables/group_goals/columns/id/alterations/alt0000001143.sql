-- Revert: schemas/dashboard_public/tables/group_goals/columns/id/alterations/alt0000001143 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

