-- Revert: schemas/dashboard_limits_public/tables/group_member_limits/alterations/alt0000000290 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".group_member_limits
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

