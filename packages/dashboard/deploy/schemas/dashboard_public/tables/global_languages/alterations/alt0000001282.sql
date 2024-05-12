-- Deploy: schemas/dashboard_public/tables/global_languages/alterations/alt0000001282 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table

BEGIN;

ALTER TABLE "dashboard_public".global_languages
    DISABLE ROW LEVEL SECURITY;
COMMIT;
