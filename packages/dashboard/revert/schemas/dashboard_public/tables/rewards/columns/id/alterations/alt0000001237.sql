-- Revert: schemas/dashboard_public/tables/rewards/columns/id/alterations/alt0000001237 from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

