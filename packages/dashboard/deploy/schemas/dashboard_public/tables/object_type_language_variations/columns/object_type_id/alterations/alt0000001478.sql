-- Deploy: schemas/dashboard_public/tables/object_type_language_variations/columns/object_type_id/alterations/alt0000001478 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_language_variations/table
-- requires: schemas/dashboard_public/tables/object_type_language_variations/columns/object_type_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_language_variations 
    ALTER COLUMN object_type_id SET NOT NULL;
COMMIT;
