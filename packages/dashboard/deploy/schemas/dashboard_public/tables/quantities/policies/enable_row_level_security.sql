-- Deploy: schemas/dashboard_public/tables/quantities/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table

BEGIN;

ALTER TABLE "dashboard_public".quantities
    ENABLE ROW LEVEL SECURITY;
COMMIT;
