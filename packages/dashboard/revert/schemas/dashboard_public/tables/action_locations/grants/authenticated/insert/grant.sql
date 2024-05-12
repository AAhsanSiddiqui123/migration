-- Revert: schemas/dashboard_public/tables/action_locations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".action_locations FROM authenticated;
COMMIT;  

