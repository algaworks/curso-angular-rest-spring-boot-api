package com.example.algamoney.api.repository.listener;

import com.example.algamoney.api.AlgamoneyApiApplication;
import com.example.algamoney.api.model.Lancamento;
import com.example.algamoney.api.storage.S3;
import org.springframework.util.StringUtils;

import javax.persistence.PostLoad;

public class LancamentoAnexoListener {

	@PostLoad
	public void postLoad(Lancamento lancamento) {
		if (StringUtils.hasText(lancamento.getAnexo())) {
			S3 s3 = AlgamoneyApiApplication.getBean(S3.class);
			lancamento.setUrlAnexo(s3.configurarUrl(lancamento.getAnexo()));
		}
	}

}
