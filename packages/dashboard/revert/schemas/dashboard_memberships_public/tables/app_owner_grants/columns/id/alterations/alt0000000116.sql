-- Revert: schemas/dashboard_memberships_public/tables/app_owner_grants/columns/id/alterations/alt0000000116 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_owner_grants 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

