-- Revert: schemas/dashboard_public/tables/impact_language_variations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".impact_language_variations FROM authenticated;
COMMIT;  

