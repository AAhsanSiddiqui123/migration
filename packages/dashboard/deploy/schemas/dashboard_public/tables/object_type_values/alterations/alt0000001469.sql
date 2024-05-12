-- Deploy: schemas/dashboard_public/tables/object_type_values/alterations/alt0000001469 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table

BEGIN;
COMMENT ON TABLE "dashboard_public".object_type_values IS E'@i18n object_type_value_language_variations';
COMMIT;
