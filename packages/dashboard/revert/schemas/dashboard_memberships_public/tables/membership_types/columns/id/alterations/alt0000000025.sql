-- Revert: schemas/dashboard_memberships_public/tables/membership_types/columns/id/alterations/alt0000000025 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

