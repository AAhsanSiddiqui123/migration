-- Revert: schemas/dashboard_limits_public/tables/group_member_limit_defaults/constraints/group_member_limit_defaults_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".group_member_limit_defaults 
    DROP CONSTRAINT group_member_limit_defaults_pkey;

COMMIT;  

