-- Revert: schemas/dashboard_public/tables/action_language_variations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".action_language_variations FROM authenticated;
COMMIT;  

