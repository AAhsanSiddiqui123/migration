-- Revert: schemas/dashboard_public/tables/action_status_types/triggers/insert_inf_ref from pg

BEGIN;
DROP TRIGGER insert_inf_ref ON "dashboard_public".action_status_types;
COMMIT;  

