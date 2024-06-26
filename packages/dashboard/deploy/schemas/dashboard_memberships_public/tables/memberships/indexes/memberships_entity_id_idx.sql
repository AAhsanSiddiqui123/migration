-- Deploy: schemas/dashboard_memberships_public/tables/memberships/indexes/memberships_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/entity_id/column

BEGIN;
CREATE INDEX memberships_entity_id_idx ON "dashboard_memberships_public".memberships (entity_id);
COMMIT;
