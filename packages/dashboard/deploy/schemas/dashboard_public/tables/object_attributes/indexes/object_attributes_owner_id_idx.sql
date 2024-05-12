-- Deploy: schemas/dashboard_public/tables/object_attributes/indexes/object_attributes_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table
-- requires: schemas/dashboard_public/tables/object_attributes/columns/owner_id/column

BEGIN;
CREATE INDEX object_attributes_owner_id_idx ON "dashboard_public".object_attributes (owner_id);
COMMIT;
