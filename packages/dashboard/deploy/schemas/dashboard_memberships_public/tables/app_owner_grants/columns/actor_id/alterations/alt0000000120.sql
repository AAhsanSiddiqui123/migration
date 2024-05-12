-- Deploy: schemas/dashboard_memberships_public/tables/app_owner_grants/columns/actor_id/alterations/alt0000000120 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_owner_grants/table
-- requires: schemas/dashboard_memberships_public/tables/app_owner_grants/columns/actor_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_owner_grants 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
