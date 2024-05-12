-- Deploy: schemas/dashboard_memberships_public/tables/owner_grants/indexes/owner_grants_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/owner_grants/table
-- requires: schemas/dashboard_memberships_public/tables/owner_grants/columns/entity_id/column

BEGIN;
CREATE INDEX owner_grants_entity_id_idx ON "dashboard_memberships_public".owner_grants (entity_id);
COMMIT;
