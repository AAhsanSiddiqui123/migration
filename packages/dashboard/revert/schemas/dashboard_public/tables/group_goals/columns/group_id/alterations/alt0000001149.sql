-- Revert: schemas/dashboard_public/tables/group_goals/columns/group_id/alterations/alt0000001149 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals 
    ALTER COLUMN group_id DROP NOT NULL;


COMMIT;  

