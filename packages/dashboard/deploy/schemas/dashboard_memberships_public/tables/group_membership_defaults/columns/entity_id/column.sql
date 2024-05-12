-- Deploy: schemas/dashboard_memberships_public/tables/group_membership_defaults/columns/entity_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_membership_defaults/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_membership_defaults ADD COLUMN entity_id uuid;
COMMIT;
