-- Revert: schemas/dashboard_public/tables/action_locations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".action_locations FROM authenticated;
COMMIT;  

