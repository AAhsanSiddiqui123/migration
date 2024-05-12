-- Deploy: schemas/dashboard_public/tables/object_types/indexes/object_types_quantity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/table
-- requires: schemas/dashboard_public/tables/object_types/columns/quantity_id/column

BEGIN;
CREATE INDEX object_types_quantity_id_idx ON "dashboard_public".object_types (quantity_id);
COMMIT;
