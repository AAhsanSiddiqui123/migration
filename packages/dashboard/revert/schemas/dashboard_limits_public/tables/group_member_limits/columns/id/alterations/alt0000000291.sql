-- Revert: schemas/dashboard_limits_public/tables/group_member_limits/columns/id/alterations/alt0000000291 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".group_member_limits 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

