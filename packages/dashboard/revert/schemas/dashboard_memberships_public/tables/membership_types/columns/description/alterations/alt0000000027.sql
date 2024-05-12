-- Revert: schemas/dashboard_memberships_public/tables/membership_types/columns/description/alterations/alt0000000027 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_types 
    ALTER COLUMN description DROP NOT NULL;


COMMIT;  

