-- Revert: schemas/dashboard_public/tables/form_types/triggers/insert_slg_slug from pg

BEGIN;
DROP TRIGGER insert_slg_slug ON "dashboard_public".form_types;
COMMIT;  

