-- Deploy: schemas/dashboard_public/tables/global_languages/columns/id/alterations/alt0000001283 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/global_languages/table
-- requires: schemas/dashboard_public/tables/global_languages/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".global_languages 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
