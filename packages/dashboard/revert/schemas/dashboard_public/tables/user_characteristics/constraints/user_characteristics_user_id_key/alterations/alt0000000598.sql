-- Revert: schemas/dashboard_public/tables/user_characteristics/constraints/user_characteristics_user_id_key/alterations/alt0000000598 from pg

BEGIN;
COMMENT ON CONSTRAINT user_characteristics_user_id_key ON "dashboard_public".user_characteristics IS NULL;
COMMIT;  

