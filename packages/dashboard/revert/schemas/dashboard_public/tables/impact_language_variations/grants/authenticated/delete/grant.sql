-- Revert: schemas/dashboard_public/tables/impact_language_variations/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".impact_language_variations FROM authenticated;
COMMIT;  

