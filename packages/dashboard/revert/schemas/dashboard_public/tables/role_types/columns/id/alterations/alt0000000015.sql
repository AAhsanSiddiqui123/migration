-- Revert: schemas/dashboard_public/tables/role_types/columns/id/alterations/alt0000000015 from pg

BEGIN;


ALTER TABLE "dashboard_public".role_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

