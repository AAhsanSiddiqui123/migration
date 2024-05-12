-- Revert: schemas/dashboard_public/tables/action_status_types/columns/id/alterations/alt0000001665 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_status_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

