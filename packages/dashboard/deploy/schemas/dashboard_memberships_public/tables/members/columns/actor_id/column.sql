-- Deploy: schemas/dashboard_memberships_public/tables/members/columns/actor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/members/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".members ADD COLUMN actor_id uuid;
COMMIT;
