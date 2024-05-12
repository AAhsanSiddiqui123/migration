-- Revert: schemas/dashboard_public/tables/track_locations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".track_locations FROM authenticated;
COMMIT;  

