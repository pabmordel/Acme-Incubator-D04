
package acme.features.authenticated.investment;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.activity.Activity;
import acme.entities.investment.Investment;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.datatypes.Money;
import acme.framework.entities.Authenticated;
import acme.framework.services.AbstractListService;

@Service
public class AuthenticatedInvestmentListService implements AbstractListService<Authenticated, Investment> {

	@Autowired
	AuthenticatedInvestmentRepository repository;


	@Override
	public boolean authorise(final Request<Investment> request) {
		assert request != null;
		return true;
	}

	@Override
	public void unbind(final Request<Investment> request, final Investment entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "title", "creationdate", "kind", "amount");

	}

	@Override
	public Collection<Investment> findMany(final Request<Investment> request) {
		assert request != null;
		Collection<Investment> investmentlist;
		investmentlist = this.repository.findManyAll();

		Collection<Investment> finallist = new ArrayList<Investment>();
		for (Investment n : investmentlist) {
			Collection<Activity> program = n.getProgramme();
			Money amo = n.getAmount();
			Double amount = amo.getAmount();  //este getAmount es del framework, para pasarlo a double
			Double i = 0.;
			for (Activity a : program) {
				Double part = a.getBudget().getAmount();
				i = i + part;
			}
			if (i >= amount) {
				finallist.add(n);
			}
		}

		return finallist;
	}

}
