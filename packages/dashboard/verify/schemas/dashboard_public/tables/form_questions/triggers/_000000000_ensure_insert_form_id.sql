-- Verify: schemas/dashboard_public/tables/form_questions/triggers/_000000000_ensure_insert_form_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_insert_form_id');
COMMIT;  

