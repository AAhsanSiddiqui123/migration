-- Deploy: schemas/dashboard_public/tables/language_dictionary/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table

BEGIN;

ALTER TABLE "dashboard_public".language_dictionary
    ENABLE ROW LEVEL SECURITY;
COMMIT;
