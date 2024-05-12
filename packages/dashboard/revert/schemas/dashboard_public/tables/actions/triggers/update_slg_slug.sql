-- Revert: schemas/dashboard_public/tables/actions/triggers/update_slg_slug from pg

BEGIN;
DROP TRIGGER update_slg_slug ON "dashboard_public".actions;
COMMIT;  

