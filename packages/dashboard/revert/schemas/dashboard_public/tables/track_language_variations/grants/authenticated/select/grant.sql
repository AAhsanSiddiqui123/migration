-- Revert: schemas/dashboard_public/tables/track_language_variations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".track_language_variations FROM authenticated;
COMMIT;  

