-- Revert: schemas/dashboard_public/tables/track_actions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".track_actions FROM authenticated;
COMMIT;  

