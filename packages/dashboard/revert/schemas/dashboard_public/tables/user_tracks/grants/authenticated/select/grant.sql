-- Revert: schemas/dashboard_public/tables/user_tracks/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_tracks FROM authenticated;
COMMIT;  

