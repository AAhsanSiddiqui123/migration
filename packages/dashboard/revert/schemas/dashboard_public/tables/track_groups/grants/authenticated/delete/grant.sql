-- Revert: schemas/dashboard_public/tables/track_groups/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".track_groups FROM authenticated;
COMMIT;  

