SELECT SOLUC.NR_MATRIC_SOLUCIONADOR MAT_SOLUCIONADOR, SOLUC.NM_SOLUCIONADOR NOME_SOLUCIONADOR,SOLUC.DS_EMAIL EMAIL_SOLUCIONADOR,
 AREA.NR_MATRIC_GERENTE_AREA MAT_GERENTE_AREA, Nvl(GER_AREA.NM_USUARIO,'NAO LOCALIZADO') NOME_GERENTE_AREA,EMAIL_AREA.DS_EMAIL EMAIL_GERENTE_AREA,
 DEPTO.CD_DEPTO COD_DEPTO, DEPTO.DS_DEPTO DESC_DEPTO,AREA.CD_AREA_ORIGEM AREA_ORIGEM,
 DEPTO.NR_MATRIC_GERENTE_DEPTO MAT_GERENTE_DEPTO, Nvl(GER_DEPTO.NM_USUARIO,'NAO LOCALIZADO') NOME_GERENTE_DEPTO,EMAIL_DEPTO.DS_EMAIL EMAIL_GERENTE_DEPTO,
 AREA.QTD_DIAS_SOLUCAO PRAZO, USUARIO.CD_EMPRESA 
FROM GAMSAC.DC_SAC_SOLUCIONADOR SOLUC
 LEFT OUTER JOIN ACESSO.DC_USUARIO USUARIO ON SOLUC.NR_MATRIC_SOLUCIONADOR = USUARIO.NR_MATRICULA AND USUARIO.ID_ATIVO = 'A' 
 JOIN GAMSAC.DC_SAC_DEPTO DEPTO ON SOLUC.CD_DEPTO = DEPTO.CD_DEPTO
 LEFT OUTER JOIN ACESSO.DC_USUARIO GER_DEPTO ON DEPTO.NR_MATRIC_GERENTE_DEPTO = GER_DEPTO.NR_MATRICULA
 LEFT OUTER JOIN GAMSAC.DC_SAC_SOLUCIONADOR EMAIL_DEPTO ON EMAIL_DEPTO.NR_MATRIC_SOLUCIONADOR = GER_DEPTO.NR_MATRICULA
 JOIN GAMSAC.DC_SAC_AREA_DEPTO AREA ON SOLUC.CD_AREA_DEPTO = AREA.CD_AREA_DEPTO
 LEFT OUTER JOIN ACESSO.DC_USUARIO GER_AREA ON AREA.NR_MATRIC_GERENTE_AREA = GER_AREA.NR_MATRICULA
 LEFT OUTER JOIN GAMSAC.DC_SAC_SOLUCIONADOR EMAIL_AREA ON EMAIL_AREA.NR_MATRIC_SOLUCIONADOR = GER_AREA.NR_MATRICULA
WHERE SOLUC.ID_ATIVO = 'S' 
ORDER BY SOLUC.NM_SOLUCIONADOR
