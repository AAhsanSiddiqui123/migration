-- Revert: schemas/dashboard_public/tables/track_groups/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".track_groups FROM authenticated;
COMMIT;  

