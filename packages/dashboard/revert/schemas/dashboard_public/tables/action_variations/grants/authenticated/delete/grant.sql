-- Revert: schemas/dashboard_public/tables/action_variations/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".action_variations FROM authenticated;
COMMIT;  

