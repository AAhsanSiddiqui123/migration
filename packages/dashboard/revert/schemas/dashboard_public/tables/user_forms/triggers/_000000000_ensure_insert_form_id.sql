-- Revert: schemas/dashboard_public/tables/user_forms/triggers/_000000000_ensure_insert_form_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_form_id ON "dashboard_public".user_forms;
COMMIT;  

