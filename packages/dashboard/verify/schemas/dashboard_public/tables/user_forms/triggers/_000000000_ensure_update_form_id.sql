-- Verify: schemas/dashboard_public/tables/user_forms/triggers/_000000000_ensure_update_form_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_update_form_id');
COMMIT;  

