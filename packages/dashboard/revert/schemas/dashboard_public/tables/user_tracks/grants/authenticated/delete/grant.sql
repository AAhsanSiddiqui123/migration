-- Revert: schemas/dashboard_public/tables/user_tracks/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_tracks FROM authenticated;
COMMIT;  

