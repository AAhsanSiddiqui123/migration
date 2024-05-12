-- Deploy: schemas/dashboard_memberships_public/tables/group_grants/indexes/group_grants_grantor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_grants/table
-- requires: schemas/dashboard_memberships_public/tables/group_grants/columns/grantor_id/column

BEGIN;
CREATE INDEX group_grants_grantor_id_idx ON "dashboard_memberships_public".group_grants (grantor_id);
COMMIT;
