-- Deploy: schemas/dashboard_memberships_public/tables/admin_grants/indexes/admin_grants_grantor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/admin_grants/table
-- requires: schemas/dashboard_memberships_public/tables/admin_grants/columns/grantor_id/column

BEGIN;
CREATE INDEX admin_grants_grantor_id_idx ON "dashboard_memberships_public".admin_grants (grantor_id);
COMMIT;
