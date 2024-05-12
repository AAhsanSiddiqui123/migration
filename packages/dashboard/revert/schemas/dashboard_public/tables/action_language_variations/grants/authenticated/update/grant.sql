-- Revert: schemas/dashboard_public/tables/action_language_variations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".action_language_variations FROM authenticated;
COMMIT;  

