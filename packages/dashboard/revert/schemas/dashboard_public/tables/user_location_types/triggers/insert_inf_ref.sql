-- Revert: schemas/dashboard_public/tables/user_location_types/triggers/insert_inf_ref from pg

BEGIN;
DROP TRIGGER insert_inf_ref ON "dashboard_public".user_location_types;
COMMIT;  

