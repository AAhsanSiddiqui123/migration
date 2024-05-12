-- Deploy: schemas/dashboard_memberships_public/tables/group_grants/columns/actor_id/alterations/alt0000000365 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_grants/table
-- requires: schemas/dashboard_memberships_public/tables/group_grants/columns/actor_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_grants 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
