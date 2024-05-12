-- Revert: schemas/dashboard_public/tables/track_actions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".track_actions FROM authenticated;
COMMIT;  

