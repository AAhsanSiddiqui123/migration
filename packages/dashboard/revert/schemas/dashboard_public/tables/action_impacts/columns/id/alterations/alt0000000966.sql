-- Revert: schemas/dashboard_public/tables/action_impacts/columns/id/alterations/alt0000000966 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_impacts 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

