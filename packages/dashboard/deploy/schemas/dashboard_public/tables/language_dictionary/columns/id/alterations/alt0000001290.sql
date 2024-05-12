-- Deploy: schemas/dashboard_public/tables/language_dictionary/columns/id/alterations/alt0000001290 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table
-- requires: schemas/dashboard_public/tables/language_dictionary/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".language_dictionary 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
