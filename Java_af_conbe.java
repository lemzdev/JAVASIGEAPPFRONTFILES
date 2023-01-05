package ve.gob.mf.sigecof.oocp.gasto.compromiso.actionForms;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import ve.gob.mf.sigecof.oocp.gasto.negocio.to.PersonaTO;
import ve.gob.mf.sigecof.oocp.gasto.negocio.to.TipoPersonaTO;

/**
 * Form bean for a Struts application.
 * @version 	1.0
 * @author
 */
public class ConsultaBeneficiarioAF extends ActionForm

{
	private Map listaTipoBeneficiario = new HashMap();
	private ArrayList listaTipoBeneficiarioArray = new ArrayList(); 
	private String codigoTipoBeneSeleccionado = null;
	
	private Map listaBeneficiario = new HashMap();
	private ArrayList listaBeneficiarioArray = new ArrayList();
	private String codigoSeleccionado = null;
	private String paso = null;
	
	

	/**
	 * @return Returns the listaTipoBeneficiario.
	 */
	public Collection getListaTipoBeneficiario() {
		return listaTipoBeneficiario.values();
	}
	/**
	 * @param listaTipoBeneficiario The listaTipoBeneficiario to set.
	 */
	public void setListaTipoBeneficiario(ArrayList listaTipoBeneficiario) {
		this.listaTipoBeneficiario.clear();
		Iterator i =listaTipoBeneficiario.iterator();				
		while (i.hasNext()){
			TipoPersonaTO tipoPersonaTo = (TipoPersonaTO)i.next();
			//personaTo.getEnteReceptor().getCodigo();
			this.listaTipoBeneficiario.put(String.valueOf(tipoPersonaTo.getIdTipoPersona()),tipoPersonaTo);
		}
	this.setListaTipoBeneficiarioArray(listaTipoBeneficiario);	
	}
	/**
	 * @return Returns the listaTipoBeneficiarioArray.
	 */
	public ArrayList getListaTipoBeneficiarioArray() {
		return listaTipoBeneficiarioArray;
	}
	/**
	 * @param listaTipoBeneficiarioArray The listaTipoBeneficiarioArray to set.
	 */
	public void setListaTipoBeneficiarioArray(ArrayList listaTipoBeneficiarioArray) {
		this.listaTipoBeneficiarioArray = listaTipoBeneficiarioArray;
	}
	
	/**
	 * @return Returns the codigoTipoBeneSeleccionado.
	 */
	public String getCodigoTipoBeneSeleccionado() {
		return codigoTipoBeneSeleccionado;
	}
	/**
	 * @param codigoTipoBeneSeleccionado The codigoTipoBeneSeleccionado to set.
	 */
	public void setCodigoTipoBeneSeleccionado(String codigoTipoBeneSeleccionado) {
		this.codigoTipoBeneSeleccionado = codigoTipoBeneSeleccionado;
	}
	/**
	 * @return Returns the listaBeneficiario.
	 */
	public Collection getListaBeneficiario() {
		return listaBeneficiario.values();
	}
	/**
	 * @param listaBeneficiario The listaBeneficiario to set.
	 */
	public void setListaBeneficiario(ArrayList listaBeneficiario) {
		this.listaBeneficiario.clear();
		Iterator i =listaBeneficiario.iterator();				
		while (i.hasNext()){
			PersonaTO personaTo = (PersonaTO)i.next();
			//personaTo.getEnteReceptor().getCodigo();
			this.listaBeneficiario.put(String.valueOf(personaTo.getIdPersona()),personaTo);
		}
	this.setListaBeneficiarioArray(listaBeneficiario);	
	}
	
	
	/**
	 * @return Returns the codigoSeleccionado.
	 */
	public String getCodigoSeleccionado() {
		return codigoSeleccionado;
	}
	/**
	 * @param codigoSeleccionado The codigoSeleccionado to set.
	 */
	public void setCodigoSeleccionado(String codigoSeleccionado) {
		this.codigoSeleccionado = codigoSeleccionado;
	}
    public void reset(ActionMapping mapping, HttpServletRequest request) {

        // Reset field values here.

    }

    public ActionErrors validate(ActionMapping mapping,HttpServletRequest request) {

        ActionErrors errors = new ActionErrors();
        // Validate the fields in your form, adding
        // adding each error to this.errors as found, e.g.

        // if ((field == null) || (field.length() == 0)) {
        //   errors.add("field", new org.apache.struts.action.ActionError("error.field.required"));
        // }
        return errors;

    }
	/**
	 * @return Returns the listaBeneficiarioArray.
	 */
	public ArrayList getListaBeneficiarioArray() {
		return listaBeneficiarioArray;
	}
	/**
	 * @param listaBeneficiarioArray The listaBeneficiarioArray to set.
	 */
	public void setListaBeneficiarioArray(ArrayList listaBeneficiarioArray) {
		this.listaBeneficiarioArray = listaBeneficiarioArray;
	}
	/**
	 * @return Returns the paso.
	 */
	public String getPaso() {
		return paso;
	}
	/**
	 * @param paso The paso to set.
	 */
	public void setPaso(String paso) {
		this.paso = paso;
	}
}

