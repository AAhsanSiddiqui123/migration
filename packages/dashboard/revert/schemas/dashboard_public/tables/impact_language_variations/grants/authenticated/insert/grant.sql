-- Revert: schemas/dashboard_public/tables/impact_language_variations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".impact_language_variations FROM authenticated;
COMMIT;  

