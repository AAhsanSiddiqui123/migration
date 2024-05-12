-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/columns/actor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_memberships ADD COLUMN actor_id uuid;
COMMIT;
