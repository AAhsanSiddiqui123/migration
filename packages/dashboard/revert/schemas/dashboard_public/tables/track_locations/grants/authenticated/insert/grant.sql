-- Revert: schemas/dashboard_public/tables/track_locations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".track_locations FROM authenticated;
COMMIT;  

