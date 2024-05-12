-- Revert: schemas/dashboard_public/tables/action_status_types/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".action_status_types FROM authenticated;
COMMIT;  

