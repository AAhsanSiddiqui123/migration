-- Revert: schemas/dashboard_public/tables/action_status_types/alterations/alt0000001664 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_status_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

