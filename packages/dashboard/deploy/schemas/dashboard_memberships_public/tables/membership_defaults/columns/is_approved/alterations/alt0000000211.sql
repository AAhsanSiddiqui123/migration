-- Deploy: schemas/dashboard_memberships_public/tables/membership_defaults/columns/is_approved/alterations/alt0000000211 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/table
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/columns/is_approved/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".membership_defaults 
    ALTER COLUMN is_approved SET NOT NULL;
COMMIT;
