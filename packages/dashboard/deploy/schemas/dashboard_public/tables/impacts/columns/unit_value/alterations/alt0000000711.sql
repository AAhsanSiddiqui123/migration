-- Deploy: schemas/dashboard_public/tables/impacts/columns/unit_value/alterations/alt0000000711 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/columns/unit_value/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.unit_value IS E'magnitude or number of the quantity';
COMMIT;
