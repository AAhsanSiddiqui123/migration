-- Revert: schemas/dashboard_public/tables/rewards/columns/owner_id/alterations/alt0000001239 from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

