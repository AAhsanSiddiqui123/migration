-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/id/alterations/alt0000000197 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

