-- Deploy: schemas/dashboard_public/tables/objects/columns/id/alterations/alt0000000652 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/objects/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".objects 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
