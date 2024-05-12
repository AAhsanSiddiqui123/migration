-- Revert: schemas/dashboard_memberships_public/tables/membership_types/columns/name/alterations/alt0000000026 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_types 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  

