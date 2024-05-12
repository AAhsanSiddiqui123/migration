-- Verify: schemas/dashboard_public/tables/object_attributes/triggers/_000000000_ensure_insert_object_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_insert_object_id');
COMMIT;  

