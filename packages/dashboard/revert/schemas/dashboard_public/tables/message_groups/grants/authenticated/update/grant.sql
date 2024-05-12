-- Revert: schemas/dashboard_public/tables/message_groups/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".message_groups FROM authenticated;
COMMIT;  

