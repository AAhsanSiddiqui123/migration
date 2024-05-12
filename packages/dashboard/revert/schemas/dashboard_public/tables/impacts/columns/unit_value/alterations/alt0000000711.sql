-- Revert: schemas/dashboard_public/tables/impacts/columns/unit_value/alterations/alt0000000711 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.unit_value IS NULL;
COMMIT;  

