-- Revert: schemas/dashboard_public/tables/action_variations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".action_variations FROM authenticated;
COMMIT;  

