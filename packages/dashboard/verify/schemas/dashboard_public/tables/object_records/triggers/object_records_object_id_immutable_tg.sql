-- Verify: schemas/dashboard_public/tables/object_records/triggers/object_records_object_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.object_records_object_id_immutable_tg');
COMMIT;  

