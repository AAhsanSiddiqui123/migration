-- Verify roles/authorized/role  on pg

BEGIN;

SELECT verify_role ('authorized');

ROLLBACK;
