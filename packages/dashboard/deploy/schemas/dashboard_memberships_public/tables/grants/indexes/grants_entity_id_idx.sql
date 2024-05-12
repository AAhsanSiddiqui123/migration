-- Deploy: schemas/dashboard_memberships_public/tables/grants/indexes/grants_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/grants/table
-- requires: schemas/dashboard_memberships_public/tables/grants/columns/entity_id/column

BEGIN;
CREATE INDEX grants_entity_id_idx ON "dashboard_memberships_public".grants (entity_id);
COMMIT;
