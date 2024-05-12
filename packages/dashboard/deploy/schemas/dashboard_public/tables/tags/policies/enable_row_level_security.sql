-- Deploy: schemas/dashboard_public/tables/tags/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tags/table

BEGIN;

ALTER TABLE "dashboard_public".tags
    ENABLE ROW LEVEL SECURITY;
COMMIT;
