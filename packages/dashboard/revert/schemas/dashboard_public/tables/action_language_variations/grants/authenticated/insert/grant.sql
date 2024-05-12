-- Revert: schemas/dashboard_public/tables/action_language_variations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".action_language_variations FROM authenticated;
COMMIT;  

