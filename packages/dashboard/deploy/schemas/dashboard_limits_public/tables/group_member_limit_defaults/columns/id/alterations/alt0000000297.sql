-- Deploy: schemas/dashboard_limits_public/tables/group_member_limit_defaults/columns/id/alterations/alt0000000297 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/group_member_limit_defaults/table
-- requires: schemas/dashboard_limits_public/tables/group_member_limit_defaults/columns/id/column

BEGIN;

ALTER TABLE "dashboard_limits_public".group_member_limit_defaults 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
