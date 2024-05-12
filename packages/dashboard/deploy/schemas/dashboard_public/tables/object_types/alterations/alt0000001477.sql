-- Deploy: schemas/dashboard_public/tables/object_types/alterations/alt0000001477 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/table

BEGIN;
COMMENT ON TABLE "dashboard_public".object_types IS E'@i18n object_type_language_variations';
COMMIT;
