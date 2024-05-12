-- Revert: schemas/dashboard_public/tables/message_groups/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".message_groups FROM authenticated;
COMMIT;  

