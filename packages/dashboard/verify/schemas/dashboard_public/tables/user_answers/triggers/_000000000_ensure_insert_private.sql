-- Verify: schemas/dashboard_public/tables/user_answers/triggers/_000000000_ensure_insert_private on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_insert_private');
COMMIT;  

