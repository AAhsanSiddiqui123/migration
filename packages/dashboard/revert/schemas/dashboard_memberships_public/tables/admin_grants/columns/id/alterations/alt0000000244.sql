-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/columns/id/alterations/alt0000000244 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".admin_grants 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

