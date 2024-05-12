-- Revert: schemas/dashboard_public/tables/action_locations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".action_locations FROM authenticated;
COMMIT;  

