-- Deploy: schemas/dashboard_public/tables/form_types/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/table

BEGIN;

ALTER TABLE "dashboard_public".form_types
    ENABLE ROW LEVEL SECURITY;
COMMIT;
