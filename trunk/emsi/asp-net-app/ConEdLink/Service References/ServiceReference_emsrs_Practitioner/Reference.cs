﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.296
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ConEdLink.ServiceReference_emsrs_Practitioner {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference_emsrs_Practitioner.IPractitioner")]
    public interface IPractitioner {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPractitioner/GetInfoByStatus", ReplyAction="http://tempuri.org/IPractitioner/GetInfoByStatusResponse")]
        string GetInfoByStatus(string statusXML);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IPractitionerChannel : ConEdLink.ServiceReference_emsrs_Practitioner.IPractitioner, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class PractitionerClient : System.ServiceModel.ClientBase<ConEdLink.ServiceReference_emsrs_Practitioner.IPractitioner>, ConEdLink.ServiceReference_emsrs_Practitioner.IPractitioner {
        
        public PractitionerClient() {
        }
        
        public PractitionerClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public PractitionerClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public PractitionerClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public PractitionerClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string GetInfoByStatus(string statusXML) {
            return base.Channel.GetInfoByStatus(statusXML);
        }
    }
}
