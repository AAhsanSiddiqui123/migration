-- Deploy: schemas/dashboard_memberships_public/tables/group_owner_grants/columns/entity_id/alterations/alt0000000356 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_owner_grants/table
-- requires: schemas/dashboard_memberships_public/tables/group_owner_grants/columns/entity_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_owner_grants 
    ALTER COLUMN entity_id SET NOT NULL;
COMMIT;
