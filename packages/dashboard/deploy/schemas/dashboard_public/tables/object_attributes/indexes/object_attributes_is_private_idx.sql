-- Deploy: schemas/dashboard_public/tables/object_attributes/indexes/object_attributes_is_private_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table
-- requires: schemas/dashboard_public/tables/object_attributes/columns/is_private/column

BEGIN;
CREATE INDEX object_attributes_is_private_idx ON "dashboard_public".object_attributes (is_private);
COMMIT;
