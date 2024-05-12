-- Revert: schemas/dashboard_public/tables/tracks/triggers/insert_slg_slug from pg

BEGIN;
DROP TRIGGER insert_slg_slug ON "dashboard_public".tracks;
COMMIT;  

