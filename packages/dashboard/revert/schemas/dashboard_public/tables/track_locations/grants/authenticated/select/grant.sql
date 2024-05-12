-- Revert: schemas/dashboard_public/tables/track_locations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".track_locations FROM authenticated;
COMMIT;  

