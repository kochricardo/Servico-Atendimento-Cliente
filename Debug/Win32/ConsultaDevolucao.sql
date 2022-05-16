SELECT NROO_Y ORDEM, D.DS_DETALHE, 
  DECODE(STAO_O,'T','DIGITADO - WEB DEVOLUCAO','N','DIGITADO - GAM','A','AGUARDANDO FATURAMENTO','F','FATURADA',STAO_O) SITUACAO 
FROM PRDDM.DCPDI I,PRDDM.DCPDC P, PRDDM.DC_DEV_DETALHE D, PRDDM.DC_DEV_ORIGEM O, PRDDM.DC_DEV_MOTIVO M 
WHERE NROO_O = NROO_Y 
 AND P.NR_NFE = I.NR_NFE 
 AND P.NR_NFE_SERIE = I.NR_NFE_SERIE 
 AND P.ID_EMPRESA = I.ID_EMPRESA 
 AND I.CD_MOTIVO_DEVOLUCAO = D.CD_DETALHE 
 AND D.CD_ORIGEM = M.CD_ORIGEM 
 AND D.CD_ORIGEM = O.CD_ORIGEM 
 AND M.CD_ORIGEM = O.CD_ORIGEM 
 AND M.CD_MOTIVO = D.CD_MOTIVO 
 AND p.id_empresa = :CD_EMPRESA 
 AND P.nr_nfe = :NR_NFE 
 AND P.nr_nfe_serie = :NR_SERIE 
 AND I.NROM_Y = :CD_MERCADORIA 
