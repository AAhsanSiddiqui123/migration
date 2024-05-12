-- Revert: schemas/dashboard_public/tables/action_language_variations/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".action_language_variations FROM authenticated;
COMMIT;  

