-- Deploy: schemas/dashboard_public/tables/global_languages/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;

ALTER TABLE "dashboard_public".global_languages
    ENABLE ROW LEVEL SECURITY;
COMMIT;
