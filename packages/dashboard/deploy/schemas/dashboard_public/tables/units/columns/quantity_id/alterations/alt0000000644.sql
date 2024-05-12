-- Deploy: schemas/dashboard_public/tables/units/columns/quantity_id/alterations/alt0000000644 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table
-- requires: schemas/dashboard_public/tables/units/columns/quantity_id/column

BEGIN;

ALTER TABLE "dashboard_public".units 
    ALTER COLUMN quantity_id SET NOT NULL;
COMMIT;
