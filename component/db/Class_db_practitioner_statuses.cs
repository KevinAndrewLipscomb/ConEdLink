using Class_db;
using Class_db_trail;
using MySql.Data.MySqlClient;
using kix;
using System;
using System.Web.UI.WebControls;

namespace Class_db_practitioner_statuses
  {

  internal enum practitioner_status_enumeration
    {
    DESCRIPTION_1 = 1,
    DESCRIPTION_2 = 2
    }

  public class TClass_db_practitioner_statuses: TClass_db
    {

    private readonly TClass_db_trail db_trail = null;

    public TClass_db_practitioner_statuses() : base()
      {
      db_trail = new TClass_db_trail();
      }

    public bool Bind
      (
      string partial_spec,
      object target
      )
      {
      Open();
      ((target) as ListControl).Items.Clear();
      using var my_sql_command = new MySqlCommand
        (
        "SELECT lpad(id,4,'0') as id"
        + " , description"
        + " FROM practitioner_status"
        + " WHERE concat(lpad(id,4,'0'),' -- ',description) like '%" + partial_spec + "%'"
        + " order by description",
        connection
        );
      var dr = my_sql_command.ExecuteReader();
      while (dr.Read())
        {
        ((target) as ListControl).Items.Add(new ListItem(dr["id"].ToString() + k.SPACE_HYPHENS_SPACE + dr["description"].ToString(), dr["id"].ToString()));
        }
      dr.Close();
      Close();
      return ((target) as ListControl).Items.Count > 0;
      }

    public void BindDirectToListControl
      (
      object target,
      string unselected_literal,
      string selected_value
      )
      {
      ((target) as ListControl).Items.Clear();
      if (unselected_literal.Length > 0)
        {
        ((target) as ListControl).Items.Add(new ListItem(unselected_literal, k.EMPTY));
        }
      Open();
      using var my_sql_command = new MySqlCommand("SELECT id,description FROM practitioner_status where description <> '(none specified)' order by id", connection);
      var dr = my_sql_command.ExecuteReader();
      while (dr.Read())
        {
        ((target) as ListControl).Items.Add(new ListItem(dr["description"].ToString(), dr["id"].ToString()));
        }
      dr.Close();
      Close();
      if (selected_value.Length > 0)
        {
        ((target) as ListControl).SelectedValue = selected_value;
        }
      }
    public void BindDirectToListControl(object target,string unselected_literal)
      {
      BindDirectToListControl(target, unselected_literal, k.EMPTY);
      }
    public void BindDirectToListControl(object target)
      {
      BindDirectToListControl(target, "-- practitioner_status --");
      }

    public bool Delete(string id)
      {
      var result = true;
      Open();
      try
        {
        using var my_sql_command = new MySqlCommand(db_trail.Saved("delete from practitioner_status where id = '" + id + "'"), connection);
        my_sql_command.ExecuteNonQuery();
        }
      catch(System.Exception e)
        {
        if (e.Message.StartsWith("Cannot delete or update a parent row: a foreign key constraint fails", true, null))
          {
          result = false;
          }
        else
          {
          throw;
          }
        }
      Close();
      return result;
      }

    public bool Get
      (
      string id,
      out string description
      )
      {
      description = k.EMPTY;
      var result = false;
      Open();
      using var my_sql_command = new MySqlCommand("select description from practitioner_status where id = '" + id + "'", connection);
      var dr = my_sql_command.ExecuteReader();
      if (dr.Read())
        {
        description = dr["description"].ToString();
        result = true;
        }
      dr.Close();
      Close();
      return result;
      }

    public void Set
      (
      string id,
      string description
      )
      {
      var childless_field_assignments_clause = "description = '" + description + "'";
      Open();
      using var my_sql_command = new MySqlCommand
        (
        db_trail.Saved
          (
          "insert practitioner_status"
          + " set id = NULLIF('" + id + "','')"
          + " , " + childless_field_assignments_clause
          + " on duplicate key update "
          + childless_field_assignments_clause
          ),
        connection
        );
      my_sql_command.ExecuteNonQuery();
      Close();
      }

    } // end TClass_db_practitioner_statuses

  }
