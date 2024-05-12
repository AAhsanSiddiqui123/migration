-- Revert: schemas/dashboard_public/tables/location_types/triggers/update_inf_ref from pg

BEGIN;
DROP TRIGGER update_inf_ref ON "dashboard_public".location_types;
COMMIT;  

