-- Deploy: schemas/dashboard_memberships_public/tables/membership_types/columns/description/alterations/alt0000000027 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_types/table
-- requires: schemas/dashboard_memberships_public/tables/membership_types/columns/description/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".membership_types 
    ALTER COLUMN description SET NOT NULL;
COMMIT;
