// Decompiled with JetBrains decompiler
// Type: Launcher_CoopGamePlay_V_0_2.Launcher
// Assembly: Launcher CoopGamePlays, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2CF8ED88-150A-4A95-B659-83CB17989E47
// Assembly location: C:\Users\Mike\Desktop\Launcher CoopGamePlays\Launcher CoopGamePlays.exe

using Launcher_CoopGamePlay_V_0_2.Properties;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;

namespace Launcher_CoopGamePlay_V_0_2
{
  public class Launcher : Form
  {
    private IContainer components = (IContainer) null;
    public static string Chemin_Dossier_client;
    private Button Bouton_Options;
    private Button Bouton_Propos;
    private Button Bouton_Forum;
    public static Button Bouton_Parcourir;
    public static Button Bouton_Jouer;
    public static Button Bouton_Télécharger;
    public static TextBox Text_Chemin;
    public static Label label2;
    public static Label Label_Fichiers_sur_fichiers;
    public static ProgressBar Barre_Chargement_Total;
    public static ProgressBar Barre_Chargement_Fichier;
    public static Label Label_nb_mos;
    public static Label Label_fichier_nb_octet;

    public Launcher()
    {
      Control.CheckForIllegalCrossThreadCalls = false;
      this.InitializeComponent();
      if (Config.Default.Chemin_Client == "Rien")
        return;
      Launcher.Text_Chemin.Text = Config.Default.Chemin_Client;
      Launcher.Chemin_Dossier_client = Launcher.Text_Chemin.Text;
      Launcher.label2.Text = "Cliquez sur Télécharger les fichiers pour vérifier si il y a une mise à jour";
      Launcher.Bouton_Télécharger.Visible = true;
    }

    private void Bouton_Parcourir_Click(object sender, EventArgs e)
    {
      FolderBrowserDialog folderBrowserDialog = new FolderBrowserDialog();
      folderBrowserDialog.Description = "Sélectionner ArmA3.exe";
      int num = (int) folderBrowserDialog.ShowDialog();
      Launcher.Text_Chemin.Text = folderBrowserDialog.SelectedPath;
      Launcher.Chemin_Dossier_client = folderBrowserDialog.SelectedPath;
      Config.Default.Chemin_Client = Launcher.Chemin_Dossier_client;
      Config.Default.Save();
      Launcher.label2.Text = "Cliquez sur Télécharger les fichiers pour vérifier si il y a une mise à jour";
      Launcher.Bouton_Télécharger.Visible = true;
    }

    private void Bouton_Télécharger_Click(object sender, EventArgs e)
    {
      new Thread(new ThreadStart(new Worker().Telecharger_Les_Fichiers)).Start();
      Launcher.Bouton_Jouer.Visible = true;
    }

    private void Bouton_Jouer_Click(object sender, EventArgs e)
    {
      string str1 = "";
      string str2 = "";
      string str3 = "";
      string str4 = "";
      string str5 = "";
      string str6 = "";
      string str7 = "";
      string str8 = "";
      string str9 = "";
      string str10 = "";
      string str11 = "";
      string str12 = "";
      if (Config.Default.Autre_CB)
        str1 = " " + Config.Default.Autre_string;
      if (Config.Default.Connection)
        str2 = " +connect 37.187.141.158:2302 -mod=@CoopGameplays";
      if (Config.Default.CPUcount_CB)
        str3 = " -cpucount=" + Config.Default.CPUcount_nombre.ToString();
      if (Config.Default.EnableHT)
        str4 = " -EnableHT";
      if (Config.Default.Fenetre)
        str5 = " -window";
      if (Config.Default.MaxMEM_CB)
        str6 = " -maxmem=" + Config.Default.MaxMEM_nombre.ToString();
      if (Config.Default.MaxVRAM_CB)
        str7 = " -maxVRAM=" + Config.Default.MaxVRAM_nombre.ToString();
      if (Config.Default.NoBenchMark)
        str8 = " -noBenchmark";
      if (Config.Default.Nologs)
        str9 = " -noLogs";
      if (Config.Default.NoPause)
        str10 = " -noPause";
      if (Config.Default.NoSplash)
        str11 = " -noSplash";
      if (Config.Default.World)
        str12 = " -noWorld";
      Process.Start(Launcher.Chemin_Dossier_client + "/Arma3.exe", str2 + str3 + str4 + str5 + str6 + str7 + str8 + str9 + str10 + str11 + str12 + str1);
    }

    private void button1_Click(object sender, EventArgs e)
    {
      int num = (int) new Form2().ShowDialog();
    }

    private void Bouton_Propos_Click(object sender, EventArgs e)
    {
      int num = (int) new Form3().ShowDialog();
    }

    private void Bouton_Forum_Click(object sender, EventArgs e)
    {
      Process.Start("http://www.altis-life-coopgameplays.fr/forum/index.php");
    }

    protected override void Dispose(bool disposing)
    {
      if (disposing && this.components != null)
        this.components.Dispose();
      base.Dispose(disposing);
    }

    private void InitializeComponent()
    {
      ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (Launcher));
      Launcher.Text_Chemin = new TextBox();
      Launcher.Bouton_Parcourir = new Button();
      Launcher.Bouton_Jouer = new Button();
      Launcher.label2 = new Label();
      Launcher.Barre_Chargement_Total = new ProgressBar();
      Launcher.Label_Fichiers_sur_fichiers = new Label();
      Launcher.Bouton_Télécharger = new Button();
      this.Bouton_Options = new Button();
      this.Bouton_Propos = new Button();
      this.Bouton_Forum = new Button();
      Launcher.Barre_Chargement_Fichier = new ProgressBar();
      Launcher.Label_nb_mos = new Label();
      Launcher.Label_fichier_nb_octet = new Label();
      this.SuspendLayout();
      Launcher.Text_Chemin.BorderStyle = BorderStyle.FixedSingle;
      componentResourceManager.ApplyResources((object) Launcher.Text_Chemin, "Text_Chemin");
      Launcher.Text_Chemin.Name = "Text_Chemin";
      Launcher.Bouton_Parcourir.BackColor = Color.Transparent;
      Launcher.Bouton_Parcourir.BackgroundImage = (Image) Resources.bouttonparcourir;
      componentResourceManager.ApplyResources((object) Launcher.Bouton_Parcourir, "Bouton_Parcourir");
      Launcher.Bouton_Parcourir.Name = "Bouton_Parcourir";
      Launcher.Bouton_Parcourir.UseVisualStyleBackColor = false;
      Launcher.Bouton_Parcourir.Click += new EventHandler(this.Bouton_Parcourir_Click);
      Launcher.Bouton_Jouer.BackColor = Color.Transparent;
      Launcher.Bouton_Jouer.BackgroundImage = (Image) Resources.boutonjouer;
      componentResourceManager.ApplyResources((object) Launcher.Bouton_Jouer, "Bouton_Jouer");
      Launcher.Bouton_Jouer.DialogResult = DialogResult.Cancel;
      Launcher.Bouton_Jouer.FlatAppearance.BorderSize = 0;
      Launcher.Bouton_Jouer.FlatAppearance.MouseDownBackColor = Color.Transparent;
      Launcher.Bouton_Jouer.FlatAppearance.MouseOverBackColor = Color.Transparent;
      Launcher.Bouton_Jouer.Name = "Bouton_Jouer";
      Launcher.Bouton_Jouer.UseVisualStyleBackColor = false;
      Launcher.Bouton_Jouer.Click += new EventHandler(this.Bouton_Jouer_Click);
      Launcher.label2.BackColor = Color.Transparent;
      componentResourceManager.ApplyResources((object) Launcher.label2, "label2");
      Launcher.label2.ForeColor = Color.Black;
      Launcher.label2.Name = "label2";
      Launcher.Barre_Chargement_Total.BackColor = SystemColors.ControlLightLight;
      componentResourceManager.ApplyResources((object) Launcher.Barre_Chargement_Total, "Barre_Chargement_Total");
      Launcher.Barre_Chargement_Total.Name = "Barre_Chargement_Total";
      Launcher.Barre_Chargement_Total.Style = ProgressBarStyle.Continuous;
      Launcher.Label_Fichiers_sur_fichiers.BackColor = Color.Transparent;
      Launcher.Label_Fichiers_sur_fichiers.Cursor = Cursors.Arrow;
      componentResourceManager.ApplyResources((object) Launcher.Label_Fichiers_sur_fichiers, "Label_Fichiers_sur_fichiers");
      Launcher.Label_Fichiers_sur_fichiers.Name = "Label_Fichiers_sur_fichiers";
      Launcher.Bouton_Télécharger.BackColor = Color.Transparent;
      Launcher.Bouton_Télécharger.BackgroundImage = (Image) Resources.boutondownload;
      componentResourceManager.ApplyResources((object) Launcher.Bouton_Télécharger, "Bouton_Télécharger");
      Launcher.Bouton_Télécharger.FlatAppearance.BorderSize = 0;
      Launcher.Bouton_Télécharger.FlatAppearance.MouseDownBackColor = Color.Transparent;
      Launcher.Bouton_Télécharger.FlatAppearance.MouseOverBackColor = Color.Transparent;
      Launcher.Bouton_Télécharger.Name = "Bouton_Télécharger";
      Launcher.Bouton_Télécharger.UseVisualStyleBackColor = true;
      Launcher.Bouton_Télécharger.Click += new EventHandler(this.Bouton_Télécharger_Click);
      this.Bouton_Options.BackColor = Color.Transparent;
      this.Bouton_Options.BackgroundImage = (Image) Resources.options_de_lancement1;
      this.Bouton_Options.FlatAppearance.BorderSize = 0;
      this.Bouton_Options.FlatAppearance.MouseDownBackColor = Color.Transparent;
      this.Bouton_Options.FlatAppearance.MouseOverBackColor = Color.Transparent;
      componentResourceManager.ApplyResources((object) this.Bouton_Options, "Bouton_Options");
      this.Bouton_Options.Name = "Bouton_Options";
      this.Bouton_Options.UseVisualStyleBackColor = false;
      this.Bouton_Options.Click += new EventHandler(this.button1_Click);
      this.Bouton_Propos.BackColor = Color.Transparent;
      this.Bouton_Propos.BackgroundImage = (Image) Resources.aPropos1;
      this.Bouton_Propos.FlatAppearance.BorderSize = 0;
      this.Bouton_Propos.FlatAppearance.MouseDownBackColor = Color.Transparent;
      this.Bouton_Propos.FlatAppearance.MouseOverBackColor = Color.Transparent;
      componentResourceManager.ApplyResources((object) this.Bouton_Propos, "Bouton_Propos");
      this.Bouton_Propos.Name = "Bouton_Propos";
      this.Bouton_Propos.UseVisualStyleBackColor = false;
      this.Bouton_Propos.Click += new EventHandler(this.Bouton_Propos_Click);
      this.Bouton_Forum.BackColor = Color.Transparent;
      this.Bouton_Forum.BackgroundImage = (Image) Resources.forum;
      this.Bouton_Forum.FlatAppearance.BorderSize = 0;
      this.Bouton_Forum.FlatAppearance.MouseDownBackColor = Color.Transparent;
      this.Bouton_Forum.FlatAppearance.MouseOverBackColor = Color.Transparent;
      componentResourceManager.ApplyResources((object) this.Bouton_Forum, "Bouton_Forum");
      this.Bouton_Forum.Name = "Bouton_Forum";
      this.Bouton_Forum.UseVisualStyleBackColor = false;
      this.Bouton_Forum.Click += new EventHandler(this.Bouton_Forum_Click);
      Launcher.Barre_Chargement_Fichier.BackColor = SystemColors.ControlLightLight;
      componentResourceManager.ApplyResources((object) Launcher.Barre_Chargement_Fichier, "Barre_Chargement_Fichier");
      Launcher.Barre_Chargement_Fichier.Name = "Barre_Chargement_Fichier";
      Launcher.Barre_Chargement_Fichier.Style = ProgressBarStyle.Continuous;
      Launcher.Label_nb_mos.BackColor = Color.Transparent;
      componentResourceManager.ApplyResources((object) Launcher.Label_nb_mos, "Label_nb_mos");
      Launcher.Label_nb_mos.Name = "Label_nb_mos";
      Launcher.Label_fichier_nb_octet.BackColor = Color.Transparent;
      componentResourceManager.ApplyResources((object) Launcher.Label_fichier_nb_octet, "Label_fichier_nb_octet");
      Launcher.Label_fichier_nb_octet.Name = "Label_fichier_nb_octet";
      this.AutoScaleMode = AutoScaleMode.None;
      this.BackColor = SystemColors.ActiveCaptionText;
      this.BackgroundImage = (Image) Resources.launcherFond4;
      componentResourceManager.ApplyResources((object) this, "$this");
      this.Controls.Add((Control) Launcher.Label_fichier_nb_octet);
      this.Controls.Add((Control) Launcher.Label_nb_mos);
      this.Controls.Add((Control) Launcher.Barre_Chargement_Fichier);
      this.Controls.Add((Control) this.Bouton_Forum);
      this.Controls.Add((Control) this.Bouton_Propos);
      this.Controls.Add((Control) this.Bouton_Options);
      this.Controls.Add((Control) Launcher.Label_Fichiers_sur_fichiers);
      this.Controls.Add((Control) Launcher.Barre_Chargement_Total);
      this.Controls.Add((Control) Launcher.label2);
      this.Controls.Add((Control) Launcher.Bouton_Télécharger);
      this.Controls.Add((Control) Launcher.Bouton_Jouer);
      this.Controls.Add((Control) Launcher.Bouton_Parcourir);
      this.Controls.Add((Control) Launcher.Text_Chemin);
      this.Cursor = Cursors.Arrow;
      this.FormBorderStyle = FormBorderStyle.FixedSingle;
      this.Name = "Launcher";
      this.ResumeLayout(false);
      this.PerformLayout();
    }
  }
}
