-- Deploy: schemas/dashboard_limits_public/tables/group_member_limits/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/group_member_limits/table

BEGIN;

ALTER TABLE "dashboard_limits_public".group_member_limits
    ENABLE ROW LEVEL SECURITY;
COMMIT;
