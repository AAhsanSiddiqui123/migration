-- Revert: schemas/dashboard_public/tables/connected_accounts/constraints/connected_accounts_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts 
    DROP CONSTRAINT connected_accounts_owner_id_fkey;

COMMIT;  

