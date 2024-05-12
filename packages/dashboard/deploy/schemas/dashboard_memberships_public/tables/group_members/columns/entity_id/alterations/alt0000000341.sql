-- Deploy: schemas/dashboard_memberships_public/tables/group_members/columns/entity_id/alterations/alt0000000341 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_members/table
-- requires: schemas/dashboard_memberships_public/tables/group_members/columns/entity_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_members 
    ALTER COLUMN entity_id SET NOT NULL;
COMMIT;
