﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.296
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="ASPNETDB")]
public partial class HallgatokDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertHallgatok(Hallgatok instance);
  partial void UpdateHallgatok(Hallgatok instance);
  partial void DeleteHallgatok(Hallgatok instance);
  #endregion
	
	public HallgatokDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["ASPNETDBConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public HallgatokDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public HallgatokDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public HallgatokDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public HallgatokDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<Hallgatok> Hallgatoks
	{
		get
		{
			return this.GetTable<Hallgatok>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Hallgatok")]
public partial class Hallgatok : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ID;
	
	private string _Felhasznalo_Nev;
	
	private string _Nev;
	
	private string _Neptunkod;
	
	private string _Szak;
	
	private string _Szakirany;
	
	private string _Email;
	
	private string _Megjegyzes;
	
	private string _Ertesites;
	
	private int _Feladatjelentkezes;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(int value);
    partial void OnIDChanged();
    partial void OnFelhasznalo_NevChanging(string value);
    partial void OnFelhasznalo_NevChanged();
    partial void OnNevChanging(string value);
    partial void OnNevChanged();
    partial void OnNeptunkodChanging(string value);
    partial void OnNeptunkodChanged();
    partial void OnSzakChanging(string value);
    partial void OnSzakChanged();
    partial void OnSzakiranyChanging(string value);
    partial void OnSzakiranyChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnMegjegyzesChanging(string value);
    partial void OnMegjegyzesChanged();
    partial void OnErtesitesChanging(string value);
    partial void OnErtesitesChanged();
    partial void OnFeladatjelentkezesChanging(int value);
    partial void OnFeladatjelentkezesChanged();
    #endregion
	
	public Hallgatok()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int ID
	{
		get
		{
			return this._ID;
		}
		set
		{
			if ((this._ID != value))
			{
				this.OnIDChanging(value);
				this.SendPropertyChanging();
				this._ID = value;
				this.SendPropertyChanged("ID");
				this.OnIDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Felhasznalo_Nev", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
	public string Felhasznalo_Nev
	{
		get
		{
			return this._Felhasznalo_Nev;
		}
		set
		{
			if ((this._Felhasznalo_Nev != value))
			{
				this.OnFelhasznalo_NevChanging(value);
				this.SendPropertyChanging();
				this._Felhasznalo_Nev = value;
				this.SendPropertyChanged("Felhasznalo_Nev");
				this.OnFelhasznalo_NevChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Nev", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
	public string Nev
	{
		get
		{
			return this._Nev;
		}
		set
		{
			if ((this._Nev != value))
			{
				this.OnNevChanging(value);
				this.SendPropertyChanging();
				this._Nev = value;
				this.SendPropertyChanged("Nev");
				this.OnNevChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Neptunkod", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
	public string Neptunkod
	{
		get
		{
			return this._Neptunkod;
		}
		set
		{
			if ((this._Neptunkod != value))
			{
				this.OnNeptunkodChanging(value);
				this.SendPropertyChanging();
				this._Neptunkod = value;
				this.SendPropertyChanged("Neptunkod");
				this.OnNeptunkodChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Szak", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
	public string Szak
	{
		get
		{
			return this._Szak;
		}
		set
		{
			if ((this._Szak != value))
			{
				this.OnSzakChanging(value);
				this.SendPropertyChanging();
				this._Szak = value;
				this.SendPropertyChanged("Szak");
				this.OnSzakChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Szakirany", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
	public string Szakirany
	{
		get
		{
			return this._Szakirany;
		}
		set
		{
			if ((this._Szakirany != value))
			{
				this.OnSzakiranyChanging(value);
				this.SendPropertyChanging();
				this._Szakirany = value;
				this.SendPropertyChanged("Szakirany");
				this.OnSzakiranyChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
	public string Email
	{
		get
		{
			return this._Email;
		}
		set
		{
			if ((this._Email != value))
			{
				this.OnEmailChanging(value);
				this.SendPropertyChanging();
				this._Email = value;
				this.SendPropertyChanged("Email");
				this.OnEmailChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Megjegyzes", DbType="NVarChar(500)")]
	public string Megjegyzes
	{
		get
		{
			return this._Megjegyzes;
		}
		set
		{
			if ((this._Megjegyzes != value))
			{
				this.OnMegjegyzesChanging(value);
				this.SendPropertyChanging();
				this._Megjegyzes = value;
				this.SendPropertyChanged("Megjegyzes");
				this.OnMegjegyzesChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Ertesites", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string Ertesites
	{
		get
		{
			return this._Ertesites;
		}
		set
		{
			if ((this._Ertesites != value))
			{
				this.OnErtesitesChanging(value);
				this.SendPropertyChanging();
				this._Ertesites = value;
				this.SendPropertyChanged("Ertesites");
				this.OnErtesitesChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Feladatjelentkezes", DbType="Int NOT NULL")]
	public int Feladatjelentkezes
	{
		get
		{
			return this._Feladatjelentkezes;
		}
		set
		{
			if ((this._Feladatjelentkezes != value))
			{
				this.OnFeladatjelentkezesChanging(value);
				this.SendPropertyChanging();
				this._Feladatjelentkezes = value;
				this.SendPropertyChanged("Feladatjelentkezes");
				this.OnFeladatjelentkezesChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591