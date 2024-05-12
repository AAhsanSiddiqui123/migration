-- Deploy: schemas/dashboard_public/tables/impacts/columns/id/alterations/alt0000000707 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table
-- requires: schemas/dashboard_public/tables/impacts/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".impacts 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
