-- Deploy: schemas/dashboard_limits_public/tables/group_member_limits/columns/id/alterations/alt0000000292 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/group_member_limits/table
-- requires: schemas/dashboard_limits_public/tables/group_member_limits/columns/id/column

BEGIN;

ALTER TABLE "dashboard_limits_public".group_member_limits 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
