-- Deploy: schemas/dashboard_memberships_public/tables/app_membership_defaults/columns/is_verified/alterations/alt0000000087 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/dashboard_memberships_public/tables/app_membership_defaults/columns/is_verified/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_membership_defaults 
    ALTER COLUMN is_verified SET DEFAULT false;
COMMIT;
