-- Revert: schemas/dashboard_memberships_public/tables/members/columns/is_admin/alterations/alt0000000239 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".members 
    ALTER COLUMN is_admin DROP NOT NULL;


COMMIT;  

