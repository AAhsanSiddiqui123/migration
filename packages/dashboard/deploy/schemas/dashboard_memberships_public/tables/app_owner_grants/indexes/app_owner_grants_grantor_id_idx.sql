-- Deploy: schemas/dashboard_memberships_public/tables/app_owner_grants/indexes/app_owner_grants_grantor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_owner_grants/table
-- requires: schemas/dashboard_memberships_public/tables/app_owner_grants/columns/grantor_id/column

BEGIN;
CREATE INDEX app_owner_grants_grantor_id_idx ON "dashboard_memberships_public".app_owner_grants (grantor_id);
COMMIT;
