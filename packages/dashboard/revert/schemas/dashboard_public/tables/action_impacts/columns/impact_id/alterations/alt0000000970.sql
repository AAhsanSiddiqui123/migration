-- Revert: schemas/dashboard_public/tables/action_impacts/columns/impact_id/alterations/alt0000000970 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_impacts 
    ALTER COLUMN impact_id DROP NOT NULL;


COMMIT;  

