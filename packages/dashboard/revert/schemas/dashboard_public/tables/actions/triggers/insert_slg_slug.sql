-- Revert: schemas/dashboard_public/tables/actions/triggers/insert_slg_slug from pg

BEGIN;
DROP TRIGGER insert_slg_slug ON "dashboard_public".actions;
COMMIT;  

