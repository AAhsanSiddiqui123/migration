-- Deploy dashboard:schemas/dashboard_public/tables/object_type_attributes/alterations/object_type_attributes_table_comments to pg

BEGIN;

COMMENT ON TABLE dashboard_public.object_type_attributes IS '@i18n object_type_attribute_language_variations';

COMMIT;
