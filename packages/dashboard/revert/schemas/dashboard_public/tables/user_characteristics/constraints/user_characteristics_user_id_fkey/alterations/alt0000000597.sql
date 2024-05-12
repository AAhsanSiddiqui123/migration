-- Revert: schemas/dashboard_public/tables/user_characteristics/constraints/user_characteristics_user_id_fkey/alterations/alt0000000597 from pg

BEGIN;
COMMENT ON CONSTRAINT user_characteristics_user_id_fkey ON "dashboard_public".user_characteristics IS NULL;
COMMIT;  

