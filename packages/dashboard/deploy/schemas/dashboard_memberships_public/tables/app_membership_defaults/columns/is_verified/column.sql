-- Deploy: schemas/dashboard_memberships_public/tables/app_membership_defaults/columns/is_verified/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_membership_defaults/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_membership_defaults ADD COLUMN is_verified boolean;
COMMIT;
