-- Verify: schemas/dashboard_public/tables/object_type_values/triggers/object_type_values_attr_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.object_type_values_attr_id_immutable_tg');
COMMIT;  

