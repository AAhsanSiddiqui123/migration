-- Deploy: schemas/dashboard_memberships_public/tables/admin_grants/indexes/admin_grants_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/admin_grants/table
-- requires: schemas/dashboard_memberships_public/tables/admin_grants/columns/entity_id/column

BEGIN;
CREATE INDEX admin_grants_entity_id_idx ON "dashboard_memberships_public".admin_grants (entity_id);
COMMIT;
