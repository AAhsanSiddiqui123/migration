-- Deploy: schemas/dashboard_public/tables/language_dictionary/alterations/alt0000001288 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table

BEGIN;

ALTER TABLE "dashboard_public".language_dictionary
    DISABLE ROW LEVEL SECURITY;
COMMIT;
