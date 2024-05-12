-- Deploy: schemas/dashboard_public/tables/data_tags/columns/id/alterations/alt0000001268 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tags/table
-- requires: schemas/dashboard_public/tables/data_tags/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".data_tags 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
