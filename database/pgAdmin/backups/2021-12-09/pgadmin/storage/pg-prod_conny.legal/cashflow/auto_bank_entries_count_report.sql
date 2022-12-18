SELECT count(BSEP.PAYMENT_ID) as payment_count,
	R.ID as request_id
FROM BANK_STATEMENT_ENTRIES BSE
JOIN BANK_STATEMENT_ENTRY_PAYMENTS BSEP ON BSE.ID = BSEP.BANK_STATEMENT_ENTRY_ID
JOIN PAYMENTS PA ON PA.ID = BSEP.PAYMENT_ID
JOIN REQUESTS R ON R.ID = PA.REQUEST_ID
WHERE BSEP.CREATED_BY_SYSTEM = TRUE
group by (r.id)