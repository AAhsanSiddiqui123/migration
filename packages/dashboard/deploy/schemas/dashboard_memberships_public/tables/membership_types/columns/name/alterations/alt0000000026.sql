-- Deploy: schemas/dashboard_memberships_public/tables/membership_types/columns/name/alterations/alt0000000026 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_types/table
-- requires: schemas/dashboard_memberships_public/tables/membership_types/columns/name/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".membership_types 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
