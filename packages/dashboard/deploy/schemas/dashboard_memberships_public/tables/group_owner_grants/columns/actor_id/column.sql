-- Deploy: schemas/dashboard_memberships_public/tables/group_owner_grants/columns/actor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_owner_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_owner_grants ADD COLUMN actor_id uuid;
COMMIT;
