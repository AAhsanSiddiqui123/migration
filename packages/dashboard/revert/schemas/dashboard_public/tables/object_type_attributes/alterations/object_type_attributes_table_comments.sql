-- Revert dashboard:schemas/dashboard_public/tables/object_type_attributes/alterations/object_type_attributes_table_comments from pg

BEGIN;

COMMENT ON TABLE dashboard_public.object_type_attributes IS '';

COMMIT;
