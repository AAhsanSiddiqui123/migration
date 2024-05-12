-- Verify schemas/dashboard_public/tables/object_type_attribute_language_variations/alterations/add_foreign_key_object_type_attribute_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.object_type_attribute_language_variations', 'fk_otalv_object_type_attribute_id');

ROLLBACK;
