-- Revert: schemas/dashboard_public/tables/action_status_types/columns/status_for_user/alterations/alt0000001667 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_status_types 
    ALTER COLUMN status_for_user DROP DEFAULT;

COMMIT;  

