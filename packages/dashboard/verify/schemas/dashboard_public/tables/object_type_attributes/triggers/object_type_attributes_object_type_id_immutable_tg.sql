-- Verify: schemas/dashboard_public/tables/object_type_attributes/triggers/object_type_attributes_object_type_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.object_type_attributes_object_type_id_immutable_tg');
COMMIT;  

