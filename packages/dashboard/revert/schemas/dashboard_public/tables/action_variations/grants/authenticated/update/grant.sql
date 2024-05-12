-- Revert: schemas/dashboard_public/tables/action_variations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".action_variations FROM authenticated;
COMMIT;  

