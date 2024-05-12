-- Deploy: schemas/dashboard_public/tables/units/columns/id/alterations/alt0000000642 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table
-- requires: schemas/dashboard_public/tables/units/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".units 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
