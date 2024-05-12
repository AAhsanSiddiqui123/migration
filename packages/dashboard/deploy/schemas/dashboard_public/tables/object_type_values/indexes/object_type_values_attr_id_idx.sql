-- Deploy: schemas/dashboard_public/tables/object_type_values/indexes/object_type_values_attr_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table
-- requires: schemas/dashboard_public/tables/object_type_values/columns/attr_id/column

BEGIN;
CREATE INDEX object_type_values_attr_id_idx ON "dashboard_public".object_type_values (attr_id);
COMMIT;
