-- Revert: schemas/dashboard_public/tables/track_actions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".track_actions FROM authenticated;
COMMIT;  

