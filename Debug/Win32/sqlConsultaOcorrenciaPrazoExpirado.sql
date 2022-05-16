SELECT OCORRENCIA.CD_OCORRENCIA PROTOCOLO, CLIENTE.NROC_C||CLIENTE.DIGC_C CODIGO,  CLIENTE.NROV_C SETOR, PESSOA.NOMP_P RAZAO_SOCIAL,
 OCORRENCIA.DT_RE_OCORRENCIA DATA_REGISTRO,  OCORRENCIA.DT_LI_OCORRENCIA DATA_LIMITE,  OCORRENCIA.CD_EMPRESA EMPRESA,
 OCORRENCIA.CD_PR_OCORRENCIA PRIORIDADE,ITEM.NR_MATRIC_SOLUCIONADOR,SOLUC.DS_EMAIL
FROM GAMSAC.DC_SAC_OCORRENCIA OCORRENCIA
 JOIN PRDDM.DCCLI CLIENTE ON OCORRENCIA.CD_CLIENTE = CLIENTE.NROC_C
 JOIN PRDDM.DCPES PESSOA ON CLIENTE.CGCP_C = PESSOA.CGCP_P
 JOIN GAMSAC.DC_SAC_ITEM_OCORRENCIA ITEM ON OCORRENCIA.CD_OCORRENCIA = ITEM.CD_OCORRENCIA
 JOIN ACESSO.DC_EMPRESA EMP ON OCORRENCIA.CD_EMPRESA = EMP.CD_EMPRESA
 JOIN GAMSAC.DC_SAC_SOLUCIONADOR SOLUC ON ITEM.NR_MATRIC_SOLUCIONADOR = SOLUC.NR_MATRIC_SOLUCIONADOR
WHERE OCORRENCIA.CD_OCORRENCIA > 0
 AND OCORRENCIA.DT_RE_OCORRENCIA >= TO_DATE('17/11/2016')
 AND OCORRENCIA.CD_ST_SOLUCAO_OCORRENCIA = 1
 AND trunc(ITEM.DT_LIMITE_SOLUCAO) < trunc(EMP.DT_PEDIDO)
ORDER BY OCORRENCIA.CD_OCORRENCIA
