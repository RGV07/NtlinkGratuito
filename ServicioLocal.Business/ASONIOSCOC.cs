﻿
using System.Xml.Serialization;


/// <comentarios/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.1")]
[System.SerializableAttribute()]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Xml.Serialization.XmlTypeAttribute(AnonymousType=true)]
[System.Xml.Serialization.XmlRootAttribute(Namespace="", IsNullable=false)]
public partial class ASONIOSCOC {
    
    private ASONIOSCOCPartida[] partidasField;
   
    private int tipoProveedorField;
    
    private string noProveedorField;
    
    private string serieField;
    
    private string folioField;
    
    private string ordenCompraField;
    
    /// <comentarios/>
    [System.Xml.Serialization.XmlArrayItemAttribute("Partida", IsNullable=false)]
    public ASONIOSCOCPartida[] Partidas {
        get {
            return this.partidasField;
        }
        set {
            this.partidasField = value;
        }
    }
    
    /// <comentarios/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
   //[XmlElementAttribute(Order = 1)] 

    public int tipoProveedor {
        get {
            return this.tipoProveedorField;
        }
        set {
            this.tipoProveedorField = value;
        }
    }
    
    /// <comentarios/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string noProveedor {
        get {
            return this.noProveedorField;
        }
        set {
            this.noProveedorField = value;
        }
    }
    
    /// <comentarios/>
   [System.Xml.Serialization.XmlAttributeAttribute()]
    public string serie {
        get {
            return this.serieField;
        }
        set {
            this.serieField = value;
        }
    }
    
    /// <comentarios/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string folio {
        get {
            return this.folioField;
        }
        set {
            this.folioField = value;
        }
    }
    
    /// <comentarios/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string ordenCompra {
        get {
            return this.ordenCompraField;
        }
        set {
            this.ordenCompraField = value;
        }
    }
}

/// <comentarios/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.1")]
[System.SerializableAttribute()]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Xml.Serialization.XmlTypeAttribute(AnonymousType=true)]
public partial class ASONIOSCOCPartida {
    
    private int noPartidaField;
    
    private decimal ivaAcreditableField;
    
    private decimal ivaDevengadoField;
    
    private string otrosField;
    
    /// <comentarios/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public int noPartida {
        get {
            return this.noPartidaField;
        }
        set {
            this.noPartidaField = value;
        }
    }
    
    /// <comentarios/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public decimal ivaAcreditable {
        get {
            return this.ivaAcreditableField;
        }
        set {
            this.ivaAcreditableField = value;
        }
    }
    
    /// <comentarios/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public decimal ivaDevengado {
        get {
            return this.ivaDevengadoField;
        }
        set {
            this.ivaDevengadoField = value;
        }
    }
    
    /// <comentarios/>
    [System.Xml.Serialization.XmlAttributeAttribute()]
    public string Otros {
        get {
            return this.otrosField;
        }
        set {
            this.otrosField = value;
        }
    }
}
