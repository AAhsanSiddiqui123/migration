-- Revert: schemas/dashboard_public/tables/user_settings/columns/bounds/column/alterations/alt0000001611 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings DROP COLUMN bounds;
COMMIT;  

