-- Revert schemas/dashboard_public/tables/object_type_attribute_language_variations/alterations/add_foreign_key_object_type_attribute_id from pg

BEGIN;

ALTER TABLE dashboard_public.object_type_attribute_language_variations
    DROP CONSTRAINT fk_otalv_object_type_attribute_id;

COMMIT;
