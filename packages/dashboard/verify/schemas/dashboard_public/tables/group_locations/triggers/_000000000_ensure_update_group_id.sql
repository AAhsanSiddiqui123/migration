-- Verify: schemas/dashboard_public/tables/group_locations/triggers/_000000000_ensure_update_group_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_update_group_id');
COMMIT;  

