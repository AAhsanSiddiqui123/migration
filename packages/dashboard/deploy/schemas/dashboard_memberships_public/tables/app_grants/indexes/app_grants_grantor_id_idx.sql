-- Deploy: schemas/dashboard_memberships_public/tables/app_grants/indexes/app_grants_grantor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_grants/table
-- requires: schemas/dashboard_memberships_public/tables/app_grants/columns/grantor_id/column

BEGIN;
CREATE INDEX app_grants_grantor_id_idx ON "dashboard_memberships_public".app_grants (grantor_id);
COMMIT;
