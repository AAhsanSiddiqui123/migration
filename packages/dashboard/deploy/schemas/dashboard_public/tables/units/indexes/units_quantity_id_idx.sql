-- Deploy: schemas/dashboard_public/tables/units/indexes/units_quantity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table
-- requires: schemas/dashboard_public/tables/units/columns/quantity_id/column

BEGIN;
CREATE INDEX units_quantity_id_idx ON "dashboard_public".units (quantity_id);
COMMIT;
