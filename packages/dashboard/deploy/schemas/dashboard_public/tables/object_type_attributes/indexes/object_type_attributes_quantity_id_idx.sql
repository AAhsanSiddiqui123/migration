-- Deploy: schemas/dashboard_public/tables/object_type_attributes/indexes/object_type_attributes_quantity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table
-- requires: schemas/dashboard_public/tables/object_type_attributes/columns/quantity_id/column

BEGIN;
CREATE INDEX object_type_attributes_quantity_id_idx ON "dashboard_public".object_type_attributes (quantity_id);
COMMIT;
