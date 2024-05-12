-- Verify: schemas/dashboard_public/tables/user_answers/triggers/_000000000_ensure_update_private on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_update_private');
COMMIT;  

