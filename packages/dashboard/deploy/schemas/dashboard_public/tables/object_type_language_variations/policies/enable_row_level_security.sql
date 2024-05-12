-- Deploy: schemas/dashboard_public/tables/object_type_language_variations/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_language_variations
    ENABLE ROW LEVEL SECURITY;
COMMIT;
