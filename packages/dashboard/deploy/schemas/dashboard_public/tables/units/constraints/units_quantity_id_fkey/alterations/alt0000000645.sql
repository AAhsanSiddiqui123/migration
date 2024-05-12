-- Deploy: schemas/dashboard_public/tables/units/constraints/units_quantity_id_fkey/alterations/alt0000000645 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/constraints/units_quantity_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT units_quantity_id_fkey ON "dashboard_public".units IS E'@omit manyToMany';
COMMIT;
