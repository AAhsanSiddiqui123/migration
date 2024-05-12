-- Revert: schemas/dashboard_public/tables/object_attributes/triggers/_000000000_ensure_update_object_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_object_id ON "dashboard_public".object_attributes;
COMMIT;  

