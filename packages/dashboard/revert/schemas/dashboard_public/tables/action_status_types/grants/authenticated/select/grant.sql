-- Revert: schemas/dashboard_public/tables/action_status_types/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".action_status_types FROM authenticated;
COMMIT;  

