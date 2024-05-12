-- Revert: schemas/dashboard_public/tables/track_language_variations/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".track_language_variations FROM authenticated;
COMMIT;  

