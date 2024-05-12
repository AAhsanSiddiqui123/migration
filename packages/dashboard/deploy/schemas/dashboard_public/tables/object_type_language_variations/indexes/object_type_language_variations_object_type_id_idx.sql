-- Deploy: schemas/dashboard_public/tables/object_type_language_variations/indexes/object_type_language_variations_object_type_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_language_variations/table
-- requires: schemas/dashboard_public/tables/object_type_language_variations/columns/object_type_id/column

BEGIN;
CREATE INDEX object_type_language_variations_object_type_id_idx ON "dashboard_public".object_type_language_variations (object_type_id);
COMMIT;
