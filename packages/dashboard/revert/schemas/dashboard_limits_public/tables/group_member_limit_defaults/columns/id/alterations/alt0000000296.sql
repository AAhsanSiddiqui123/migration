-- Revert: schemas/dashboard_limits_public/tables/group_member_limit_defaults/columns/id/alterations/alt0000000296 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".group_member_limit_defaults 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

