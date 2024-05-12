-- Revert: schemas/dashboard_public/tables/action_variations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".action_variations FROM authenticated;
COMMIT;  

