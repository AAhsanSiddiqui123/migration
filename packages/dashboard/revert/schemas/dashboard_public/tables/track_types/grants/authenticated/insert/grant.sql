-- Revert: schemas/dashboard_public/tables/track_types/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".track_types FROM authenticated;
COMMIT;  

