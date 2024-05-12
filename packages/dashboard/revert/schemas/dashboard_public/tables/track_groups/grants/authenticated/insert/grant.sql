-- Revert: schemas/dashboard_public/tables/track_groups/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".track_groups FROM authenticated;
COMMIT;  

