-- Revert: schemas/dashboard_public/tables/connected_accounts/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( service, identifier, details, owner_id ) ON TABLE "dashboard_public".connected_accounts FROM authenticated;
COMMIT;  

