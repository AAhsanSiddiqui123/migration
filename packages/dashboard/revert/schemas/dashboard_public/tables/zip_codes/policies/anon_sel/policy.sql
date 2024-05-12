-- Revert: schemas/dashboard_public/tables/zip_codes/policies/anon_sel/policy from pg

BEGIN;
DROP POLICY anon_sel ON "dashboard_public".zip_codes;
COMMIT;  

