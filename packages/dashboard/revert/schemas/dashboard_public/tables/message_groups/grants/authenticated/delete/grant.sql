-- Revert: schemas/dashboard_public/tables/message_groups/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".message_groups FROM authenticated;
COMMIT;  

