-- Revert roles/authorized/role from pg

BEGIN;

DROP ROLE authorized;

COMMIT;
