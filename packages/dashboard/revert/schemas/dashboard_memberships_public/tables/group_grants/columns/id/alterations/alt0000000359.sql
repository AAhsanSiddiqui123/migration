-- Revert: schemas/dashboard_memberships_public/tables/group_grants/columns/id/alterations/alt0000000359 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_grants 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

