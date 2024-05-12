-- Revert: schemas/dashboard_public/tables/track_actions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".track_actions FROM authenticated;
COMMIT;  

