-- Revert: schemas/dashboard_public/tables/form_types/triggers/update_slg_slug from pg

BEGIN;
DROP TRIGGER update_slg_slug ON "dashboard_public".form_types;
COMMIT;  

