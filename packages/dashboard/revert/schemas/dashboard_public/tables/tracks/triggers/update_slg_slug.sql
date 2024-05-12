-- Revert: schemas/dashboard_public/tables/tracks/triggers/update_slg_slug from pg

BEGIN;
DROP TRIGGER update_slg_slug ON "dashboard_public".tracks;
COMMIT;  

