/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package approval_app;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author assar
 */
@Entity
@Table(name = "tb_user", catalog = "approval", schema = "")
@NamedQueries({
    @NamedQuery(name = "TbUser.findAll", query = "SELECT t FROM TbUser t"),
    @NamedQuery(name = "TbUser.findByKodeU", query = "SELECT t FROM TbUser t WHERE t.kodeU = :kodeU"),
    @NamedQuery(name = "TbUser.findByUsername", query = "SELECT t FROM TbUser t WHERE t.username = :username"),
    @NamedQuery(name = "TbUser.findByPassword", query = "SELECT t FROM TbUser t WHERE t.password = :password"),
    @NamedQuery(name = "TbUser.findByJabatan", query = "SELECT t FROM TbUser t WHERE t.jabatan = :jabatan"),
    @NamedQuery(name = "TbUser.findByGrade", query = "SELECT t FROM TbUser t WHERE t.grade = :grade"),
    @NamedQuery(name = "TbUser.findByDept", query = "SELECT t FROM TbUser t WHERE t.dept = :dept"),
    @NamedQuery(name = "TbUser.findByPlant", query = "SELECT t FROM TbUser t WHERE t.plant = :plant")})
public class TbUser implements Serializable {
    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "kode_U")
    private String kodeU;
    @Basic(optional = false)
    @Column(name = "username")
    private String username;
    @Basic(optional = false)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @Column(name = "jabatan")
    private String jabatan;
    @Basic(optional = false)
    @Column(name = "grade")
    private String grade;
    @Basic(optional = false)
    @Column(name = "dept")
    private String dept;
    @Basic(optional = false)
    @Column(name = "plant")
    private String plant;

    public TbUser() {
    }

    public TbUser(String kodeU) {
        this.kodeU = kodeU;
    }

    public TbUser(String kodeU, String username, String password, String jabatan, String grade, String dept, String plant) {
        this.kodeU = kodeU;
        this.username = username;
        this.password = password;
        this.jabatan = jabatan;
        this.grade = grade;
        this.dept = dept;
        this.plant = plant;
    }

    public String getKodeU() {
        return kodeU;
    }

    public void setKodeU(String kodeU) {
        String oldKodeU = this.kodeU;
        this.kodeU = kodeU;
        changeSupport.firePropertyChange("kodeU", oldKodeU, kodeU);
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        String oldUsername = this.username;
        this.username = username;
        changeSupport.firePropertyChange("username", oldUsername, username);
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        String oldPassword = this.password;
        this.password = password;
        changeSupport.firePropertyChange("password", oldPassword, password);
    }

    public String getJabatan() {
        return jabatan;
    }

    public void setJabatan(String jabatan) {
        String oldJabatan = this.jabatan;
        this.jabatan = jabatan;
        changeSupport.firePropertyChange("jabatan", oldJabatan, jabatan);
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        String oldGrade = this.grade;
        this.grade = grade;
        changeSupport.firePropertyChange("grade", oldGrade, grade);
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        String oldDept = this.dept;
        this.dept = dept;
        changeSupport.firePropertyChange("dept", oldDept, dept);
    }

    public String getPlant() {
        return plant;
    }

    public void setPlant(String plant) {
        String oldPlant = this.plant;
        this.plant = plant;
        changeSupport.firePropertyChange("plant", oldPlant, plant);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (kodeU != null ? kodeU.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TbUser)) {
            return false;
        }
        TbUser other = (TbUser) object;
        if ((this.kodeU == null && other.kodeU != null) || (this.kodeU != null && !this.kodeU.equals(other.kodeU))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "approval_app.TbUser[ kodeU=" + kodeU + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
