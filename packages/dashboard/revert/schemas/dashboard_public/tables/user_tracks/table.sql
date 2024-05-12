-- Revert: schemas/dashboard_public/tables/user_tracks/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_tracks;
COMMIT;  

