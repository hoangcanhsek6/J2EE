/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import entity.Invoice;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Royal
 */
@Stateless
public class InvoiceFacade extends AbstractFacade<Invoice> {
    @PersistenceContext(unitName = "J2EE-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public InvoiceFacade() {
        super(Invoice.class);
    }
    
}
