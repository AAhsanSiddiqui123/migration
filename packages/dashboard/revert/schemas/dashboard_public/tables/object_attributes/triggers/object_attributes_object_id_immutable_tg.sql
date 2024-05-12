-- Revert: schemas/dashboard_public/tables/object_attributes/triggers/object_attributes_object_id_immutable_tg from pg

BEGIN;
DROP TRIGGER object_attributes_object_id_immutable_tg ON "dashboard_public".object_attributes;
COMMIT;  

