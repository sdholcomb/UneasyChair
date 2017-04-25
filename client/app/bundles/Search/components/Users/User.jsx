import React from 'react';

const User = React.createClass ({
  propTypes: {
    name: React.PropTypes.string,
    acronym: React.PropTypes.string
  },

  handleAddToContacts: function(e) {   
      this.props.handleAddToContacts(this.props.user); 
  },

  handleRemoveFromContacts: function(e) {   
      this.props.handleRemoveFromContacts(this.props.user); 
  },

  render: function() {
    if(this.props.signed_in) {
      if (this.props.user.addedToContacts) {
        return(
          <tr>   
            <td> {this.props.user.username} </td>
            <td> {this.props.user.name} </td>
            <td> {this.props.user.affiliation} </td>
            <td>
                <a className="btn btn-primary btn-xs" onClick={this.handleRemoveFromContacts}>
                  Remove from Contacts
                </a>
            </td> 
          </tr>
        );
      }
      else {
        return(
          <tr>   
            <td> {this.props.user.username} </td>
            <td> {this.props.user.name} </td>
            <td> {this.props.user.affiliation} </td>
            <td>
                <a className="btn btn-primary btn-xs" onClick={this.handleAddToContacts}>
                  Add to Contacts
                </a>
            </td> 
          </tr>
        );
      }
    }
    else {
      return(
        <tr>   
            <td> {this.props.user.username} </td>
            <td> {this.props.user.name} </td>
            <td> {this.props.user.affiliation} </td>
        </tr>
      );
    }
  }
});

export default User;