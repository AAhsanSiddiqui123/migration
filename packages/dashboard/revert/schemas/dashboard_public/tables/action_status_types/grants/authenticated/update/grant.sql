-- Revert: schemas/dashboard_public/tables/action_status_types/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".action_status_types FROM authenticated;
COMMIT;  

