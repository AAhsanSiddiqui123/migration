-- Verify: schemas/dashboard_public/tables/object_attributes/triggers/object_attributes_object_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.object_attributes_object_id_immutable_tg');
COMMIT;  

