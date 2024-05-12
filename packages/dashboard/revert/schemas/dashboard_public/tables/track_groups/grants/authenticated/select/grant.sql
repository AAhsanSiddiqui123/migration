-- Revert: schemas/dashboard_public/tables/track_groups/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".track_groups FROM authenticated;
COMMIT;  

