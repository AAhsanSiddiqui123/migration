-- Revert: schemas/dashboard_public/tables/track_language_variations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".track_language_variations FROM authenticated;
COMMIT;  

