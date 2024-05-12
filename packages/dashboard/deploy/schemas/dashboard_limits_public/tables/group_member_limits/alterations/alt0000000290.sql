-- Deploy: schemas/dashboard_limits_public/tables/group_member_limits/alterations/alt0000000290 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/group_member_limits/table

BEGIN;

ALTER TABLE "dashboard_limits_public".group_member_limits
    DISABLE ROW LEVEL SECURITY;
COMMIT;
