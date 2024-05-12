-- Deploy: schemas/dashboard_public/tables/object_types/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/table

BEGIN;

ALTER TABLE "dashboard_public".object_types
    ENABLE ROW LEVEL SECURITY;
COMMIT;
