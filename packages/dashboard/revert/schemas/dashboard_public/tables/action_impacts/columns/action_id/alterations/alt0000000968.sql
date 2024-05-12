-- Revert: schemas/dashboard_public/tables/action_impacts/columns/action_id/alterations/alt0000000968 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_impacts 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

