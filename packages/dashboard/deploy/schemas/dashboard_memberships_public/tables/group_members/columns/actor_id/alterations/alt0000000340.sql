-- Deploy: schemas/dashboard_memberships_public/tables/group_members/columns/actor_id/alterations/alt0000000340 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_members/table
-- requires: schemas/dashboard_memberships_public/tables/group_members/columns/actor_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_members 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
