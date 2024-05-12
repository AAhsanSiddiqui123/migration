-- Deploy: schemas/dashboard_public/tables/object_type_values/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_values
    ENABLE ROW LEVEL SECURITY;
COMMIT;
