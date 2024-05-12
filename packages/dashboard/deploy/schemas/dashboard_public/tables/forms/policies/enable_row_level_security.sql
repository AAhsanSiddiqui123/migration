-- Deploy: schemas/dashboard_public/tables/forms/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table

BEGIN;

ALTER TABLE "dashboard_public".forms
    ENABLE ROW LEVEL SECURITY;
COMMIT;
