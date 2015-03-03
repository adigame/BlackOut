// Decompiled with JetBrains decompiler
// Type: Launcher_CoopGamePlay_V_0_2.Form2
// Assembly: Launcher CoopGamePlays, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2CF8ED88-150A-4A95-B659-83CB17989E47
// Assembly location: C:\Users\Mike\Desktop\Launcher CoopGamePlays\Launcher CoopGamePlays.exe

using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;

namespace Launcher_CoopGamePlay_V_0_2
{
  public class Form2 : Form
  {
    private IContainer components = (IContainer) null;
    private CheckBox CheckBox_Connection;
    private CheckBox CheckBox_EnableHT;
    private CheckBox CheckBox_CPUcount;
    private CheckBox CheckBox_MaxMEM;
    private CheckBox CheckBox_MAxVRAM;
    private CheckBox CheckBox_NoPause;
    private CheckBox CheckBox_NoSplash;
    private CheckBox CheckBox_noWorld;
    private CheckBox CheckBox_NoLogs;
    private CheckBox CheckBox_noBenchMark;
    private CheckBox CheckBox_Fenetre;
    private CheckBox CheckBox_Autre;
    private TextBox textBox1;
    private Label label1;
    private LinkLabel linkLabel1;
    private Button Bouton_Options_Terminer;
    private NumericUpDown Nombre_CPUcount;
    private NumericUpDown Nombre_MaxVRAM;
    private NumericUpDown Nombre_MaxMem;

    public Form2()
    {
      this.InitializeComponent();
      this.CheckBox_Autre.Checked = Config.Default.Autre_CB;
      if (!(Config.Default.Autre_string == "Rien"))
        this.textBox1.Text = Config.Default.Autre_string;
      this.CheckBox_Connection.Checked = Config.Default.Connection;
      this.CheckBox_CPUcount.Checked = Config.Default.CPUcount_CB;
      this.Nombre_CPUcount.Value = Config.Default.CPUcount_nombre;
      this.CheckBox_EnableHT.Checked = Config.Default.EnableHT;
      this.CheckBox_Fenetre.Checked = Config.Default.Fenetre;
      this.CheckBox_MaxMEM.Checked = Config.Default.MaxMEM_CB;
      this.Nombre_MaxMem.Value = Config.Default.MaxMEM_nombre;
      this.CheckBox_MAxVRAM.Checked = Config.Default.MaxVRAM_CB;
      this.Nombre_MaxVRAM.Value = Config.Default.MaxVRAM_nombre;
      this.CheckBox_noBenchMark.Checked = Config.Default.NoBenchMark;
      this.CheckBox_NoLogs.Checked = Config.Default.Nologs;
      this.CheckBox_NoPause.Checked = Config.Default.NoPause;
      this.CheckBox_NoSplash.Checked = Config.Default.NoSplash;
      this.CheckBox_noWorld.Checked = Config.Default.World;
    }

    private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
    {
      Process.Start(e.Link.LinkData.ToString());
    }

    private void Form2_Load(object sender, EventArgs e)
    {
      this.linkLabel1.Links.Add(0, 15, (object) "http://www.altis-life-coopgameplays.fr/forum/index.php?threads/comment-rejoindre-le-serveur.16/");
    }

    private void Bouton_Options_Terminer_Click(object sender, EventArgs e)
    {
      this.Close();
    }

    private void CheckBox_Connection_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.Connection = this.CheckBox_Connection.Checked;
      Config.Default.Save();
    }

    private void CheckBox_EnableHT_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.EnableHT = this.CheckBox_EnableHT.Checked;
      Config.Default.Save();
    }

    private void CheckBox_NoPause_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.NoPause = this.CheckBox_NoPause.Checked;
      Config.Default.Save();
    }

    private void CheckBox_NoSplash_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.NoSplash = this.CheckBox_NoSplash.Checked;
      Config.Default.Save();
    }

    private void CheckBox_noWorld_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.World = this.CheckBox_noWorld.Checked;
      Config.Default.Save();
    }

    private void CheckBox_Fenetre_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.Fenetre = this.CheckBox_Fenetre.Checked;
      Config.Default.Save();
    }

    private void CheckBox_CPUcount_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.CPUcount_CB = this.CheckBox_CPUcount.Checked;
      Config.Default.Save();
    }

    private void CheckBox_MaxMEM_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.MaxMEM_CB = this.CheckBox_MaxMEM.Checked;
      Config.Default.Save();
    }

    private void CheckBox_MAxVRAM_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.MaxVRAM_CB = this.CheckBox_MAxVRAM.Checked;
      Config.Default.Save();
    }

    private void CheckBox_NoLogs_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.Nologs = this.CheckBox_NoLogs.Checked;
      Config.Default.Save();
    }

    private void CheckBox_noBenchMark_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.NoBenchMark = this.CheckBox_noBenchMark.Checked;
      Config.Default.Save();
    }

    private void CheckBox_Autre_CheckedChanged(object sender, EventArgs e)
    {
      Config.Default.Autre_CB = this.CheckBox_Autre.Checked;
      Config.Default.Save();
    }

    private void Nombre_CPUcount_ValueChanged(object sender, EventArgs e)
    {
      Config.Default.CPUcount_nombre = this.Nombre_CPUcount.Value;
      Config.Default.Save();
    }

    private void Nombre_MaxMem_ValueChanged(object sender, EventArgs e)
    {
      Config.Default.MaxMEM_nombre = this.Nombre_MaxMem.Value;
      Config.Default.Save();
    }

    private void Nombre_MaxVRAM_ValueChanged(object sender, EventArgs e)
    {
      Config.Default.MaxVRAM_nombre = this.Nombre_MaxVRAM.Value;
      Config.Default.Save();
    }

    private void textBox1_TextChanged(object sender, EventArgs e)
    {
      Config.Default.Autre_string = this.textBox1.Text;
      Config.Default.Save();
    }

    protected override void Dispose(bool disposing)
    {
      if (disposing && this.components != null)
        this.components.Dispose();
      base.Dispose(disposing);
    }

    private void InitializeComponent()
    {
      ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (Form2));
      this.CheckBox_Connection = new CheckBox();
      this.CheckBox_EnableHT = new CheckBox();
      this.CheckBox_CPUcount = new CheckBox();
      this.CheckBox_MaxMEM = new CheckBox();
      this.CheckBox_MAxVRAM = new CheckBox();
      this.CheckBox_NoPause = new CheckBox();
      this.CheckBox_NoSplash = new CheckBox();
      this.CheckBox_noWorld = new CheckBox();
      this.CheckBox_NoLogs = new CheckBox();
      this.CheckBox_noBenchMark = new CheckBox();
      this.CheckBox_Fenetre = new CheckBox();
      this.CheckBox_Autre = new CheckBox();
      this.textBox1 = new TextBox();
      this.label1 = new Label();
      this.linkLabel1 = new LinkLabel();
      this.Bouton_Options_Terminer = new Button();
      this.Nombre_CPUcount = new NumericUpDown();
      this.Nombre_MaxVRAM = new NumericUpDown();
      this.Nombre_MaxMem = new NumericUpDown();
      this.Nombre_CPUcount.BeginInit();
      this.Nombre_MaxVRAM.BeginInit();
      this.Nombre_MaxMem.BeginInit();
      this.SuspendLayout();
      this.CheckBox_Connection.AutoSize = true;
      this.CheckBox_Connection.Location = new Point(12, 12);
      this.CheckBox_Connection.Name = "CheckBox_Connection";
      this.CheckBox_Connection.Size = new Size(168, 17);
      this.CheckBox_Connection.TabIndex = 0;
      this.CheckBox_Connection.Text = "Connection directe au serveur";
      this.CheckBox_Connection.UseVisualStyleBackColor = true;
      this.CheckBox_Connection.CheckedChanged += new EventHandler(this.CheckBox_Connection_CheckedChanged);
      this.CheckBox_EnableHT.AutoSize = true;
      this.CheckBox_EnableHT.Location = new Point(12, 35);
      this.CheckBox_EnableHT.Name = "CheckBox_EnableHT";
      this.CheckBox_EnableHT.Size = new Size(74, 17);
      this.CheckBox_EnableHT.TabIndex = 1;
      this.CheckBox_EnableHT.Text = "EnableHT";
      this.CheckBox_EnableHT.UseVisualStyleBackColor = true;
      this.CheckBox_EnableHT.CheckedChanged += new EventHandler(this.CheckBox_EnableHT_CheckedChanged);
      this.CheckBox_CPUcount.AutoSize = true;
      this.CheckBox_CPUcount.Location = new Point(199, 12);
      this.CheckBox_CPUcount.Name = "CheckBox_CPUcount";
      this.CheckBox_CPUcount.Size = new Size(75, 17);
      this.CheckBox_CPUcount.TabIndex = 2;
      this.CheckBox_CPUcount.Text = "CPUcount";
      this.CheckBox_CPUcount.UseVisualStyleBackColor = true;
      this.CheckBox_CPUcount.CheckedChanged += new EventHandler(this.CheckBox_CPUcount_CheckedChanged);
      this.CheckBox_MaxMEM.AutoSize = true;
      this.CheckBox_MaxMEM.Location = new Point(199, 35);
      this.CheckBox_MaxMEM.Name = "CheckBox_MaxMEM";
      this.CheckBox_MaxMEM.Size = new Size(69, 17);
      this.CheckBox_MaxMEM.TabIndex = 3;
      this.CheckBox_MaxMEM.Text = "MaxMem";
      this.CheckBox_MaxMEM.UseVisualStyleBackColor = true;
      this.CheckBox_MaxMEM.CheckedChanged += new EventHandler(this.CheckBox_MaxMEM_CheckedChanged);
      this.CheckBox_MAxVRAM.AutoSize = true;
      this.CheckBox_MAxVRAM.Location = new Point(199, 58);
      this.CheckBox_MAxVRAM.Name = "CheckBox_MAxVRAM";
      this.CheckBox_MAxVRAM.Size = new Size(75, 17);
      this.CheckBox_MAxVRAM.TabIndex = 4;
      this.CheckBox_MAxVRAM.Text = "MaxVRam";
      this.CheckBox_MAxVRAM.UseVisualStyleBackColor = true;
      this.CheckBox_MAxVRAM.CheckedChanged += new EventHandler(this.CheckBox_MAxVRAM_CheckedChanged);
      this.CheckBox_NoPause.AutoSize = true;
      this.CheckBox_NoPause.Location = new Point(12, 58);
      this.CheckBox_NoPause.Name = "CheckBox_NoPause";
      this.CheckBox_NoPause.Size = new Size(70, 17);
      this.CheckBox_NoPause.TabIndex = 5;
      this.CheckBox_NoPause.Text = "NoPause";
      this.CheckBox_NoPause.UseVisualStyleBackColor = true;
      this.CheckBox_NoPause.CheckedChanged += new EventHandler(this.CheckBox_NoPause_CheckedChanged);
      this.CheckBox_NoSplash.AutoSize = true;
      this.CheckBox_NoSplash.Location = new Point(12, 81);
      this.CheckBox_NoSplash.Name = "CheckBox_NoSplash";
      this.CheckBox_NoSplash.Size = new Size(72, 17);
      this.CheckBox_NoSplash.TabIndex = 6;
      this.CheckBox_NoSplash.Text = "NoSplash";
      this.CheckBox_NoSplash.UseVisualStyleBackColor = true;
      this.CheckBox_NoSplash.CheckedChanged += new EventHandler(this.CheckBox_NoSplash_CheckedChanged);
      this.CheckBox_noWorld.AutoSize = true;
      this.CheckBox_noWorld.Location = new Point(12, 104);
      this.CheckBox_noWorld.Name = "CheckBox_noWorld";
      this.CheckBox_noWorld.Size = new Size(68, 17);
      this.CheckBox_noWorld.TabIndex = 7;
      this.CheckBox_noWorld.Text = "NoWorld";
      this.CheckBox_noWorld.UseVisualStyleBackColor = true;
      this.CheckBox_noWorld.CheckedChanged += new EventHandler(this.CheckBox_noWorld_CheckedChanged);
      this.CheckBox_NoLogs.AutoSize = true;
      this.CheckBox_NoLogs.Location = new Point(199, 81);
      this.CheckBox_NoLogs.Name = "CheckBox_NoLogs";
      this.CheckBox_NoLogs.Size = new Size(63, 17);
      this.CheckBox_NoLogs.TabIndex = 8;
      this.CheckBox_NoLogs.Text = "NoLogs";
      this.CheckBox_NoLogs.UseVisualStyleBackColor = true;
      this.CheckBox_NoLogs.CheckedChanged += new EventHandler(this.CheckBox_NoLogs_CheckedChanged);
      this.CheckBox_noBenchMark.AutoSize = true;
      this.CheckBox_noBenchMark.Location = new Point(199, 104);
      this.CheckBox_noBenchMark.Name = "CheckBox_noBenchMark";
      this.CheckBox_noBenchMark.Size = new Size(95, 17);
      this.CheckBox_noBenchMark.TabIndex = 9;
      this.CheckBox_noBenchMark.Text = "NoBenchMark";
      this.CheckBox_noBenchMark.UseVisualStyleBackColor = true;
      this.CheckBox_noBenchMark.CheckedChanged += new EventHandler(this.CheckBox_noBenchMark_CheckedChanged);
      this.CheckBox_Fenetre.AutoSize = true;
      this.CheckBox_Fenetre.Location = new Point(12, 129);
      this.CheckBox_Fenetre.Name = "CheckBox_Fenetre";
      this.CheckBox_Fenetre.Size = new Size(62, 17);
      this.CheckBox_Fenetre.TabIndex = 10;
      this.CheckBox_Fenetre.Text = "Fenêtré";
      this.CheckBox_Fenetre.UseVisualStyleBackColor = true;
      this.CheckBox_Fenetre.CheckedChanged += new EventHandler(this.CheckBox_Fenetre_CheckedChanged);
      this.CheckBox_Autre.AutoSize = true;
      this.CheckBox_Autre.Location = new Point(12, 152);
      this.CheckBox_Autre.Name = "CheckBox_Autre";
      this.CheckBox_Autre.Size = new Size(57, 17);
      this.CheckBox_Autre.TabIndex = 11;
      this.CheckBox_Autre.Text = "Autre :";
      this.CheckBox_Autre.UseVisualStyleBackColor = true;
      this.CheckBox_Autre.CheckedChanged += new EventHandler(this.CheckBox_Autre_CheckedChanged);
      this.textBox1.Location = new Point(72, 152);
      this.textBox1.Name = "textBox1";
      this.textBox1.Size = new Size(340, 20);
      this.textBox1.TabIndex = 12;
      this.textBox1.TextChanged += new EventHandler(this.textBox1_TextChanged);
      this.label1.AutoSize = true;
      this.label1.Location = new Point(12, 184);
      this.label1.Name = "label1";
      this.label1.Size = new Size(188, 13);
      this.label1.TabIndex = 13;
      this.label1.Text = "Toutes les options sont expliquées ici :";
      this.linkLabel1.AutoSize = true;
      this.linkLabel1.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
      this.linkLabel1.LinkColor = Color.MediumBlue;
      this.linkLabel1.Location = new Point(198, 184);
      this.linkLabel1.Name = "linkLabel1";
      this.linkLabel1.Size = new Size(86, 13);
      this.linkLabel1.TabIndex = 14;
      this.linkLabel1.TabStop = true;
      this.linkLabel1.Text = "Tuto launcher";
      this.linkLabel1.VisitedLinkColor = Color.Black;
      this.linkLabel1.LinkClicked += new LinkLabelLinkClickedEventHandler(this.linkLabel1_LinkClicked);
      this.Bouton_Options_Terminer.Location = new Point(128, 212);
      this.Bouton_Options_Terminer.Name = "Bouton_Options_Terminer";
      this.Bouton_Options_Terminer.Size = new Size(166, 22);
      this.Bouton_Options_Terminer.TabIndex = 15;
      this.Bouton_Options_Terminer.Text = "Terminer";
      this.Bouton_Options_Terminer.UseVisualStyleBackColor = true;
      this.Bouton_Options_Terminer.Click += new EventHandler(this.Bouton_Options_Terminer_Click);
      this.Nombre_CPUcount.Location = new Point(292, 11);
      NumericUpDown numericUpDown1 = this.Nombre_CPUcount;
      int[] bits1 = new int[4];
      bits1[0] = 16;
      Decimal num1 = new Decimal(bits1);
      numericUpDown1.Maximum = num1;
      this.Nombre_CPUcount.Name = "Nombre_CPUcount";
      this.Nombre_CPUcount.Size = new Size(120, 20);
      this.Nombre_CPUcount.TabIndex = 16;
      this.Nombre_CPUcount.ValueChanged += new EventHandler(this.Nombre_CPUcount_ValueChanged);
      NumericUpDown numericUpDown2 = this.Nombre_MaxVRAM;
      int[] bits2 = new int[4];
      bits2[0] = 1024;
      Decimal num2 = new Decimal(bits2);
      numericUpDown2.Increment = num2;
      this.Nombre_MaxVRAM.Location = new Point(292, 57);
      NumericUpDown numericUpDown3 = this.Nombre_MaxVRAM;
      int[] bits3 = new int[4];
      bits3[0] = 16384;
      Decimal num3 = new Decimal(bits3);
      numericUpDown3.Maximum = num3;
      this.Nombre_MaxVRAM.Name = "Nombre_MaxVRAM";
      this.Nombre_MaxVRAM.Size = new Size(120, 20);
      this.Nombre_MaxVRAM.TabIndex = 17;
      this.Nombre_MaxVRAM.ValueChanged += new EventHandler(this.Nombre_MaxVRAM_ValueChanged);
      NumericUpDown numericUpDown4 = this.Nombre_MaxMem;
      int[] bits4 = new int[4];
      bits4[0] = 1024;
      Decimal num4 = new Decimal(bits4);
      numericUpDown4.Increment = num4;
      this.Nombre_MaxMem.Location = new Point(292, 34);
      NumericUpDown numericUpDown5 = this.Nombre_MaxMem;
      int[] bits5 = new int[4];
      bits5[0] = 65536;
      Decimal num5 = new Decimal(bits5);
      numericUpDown5.Maximum = num5;
      this.Nombre_MaxMem.Name = "Nombre_MaxMem";
      this.Nombre_MaxMem.Size = new Size(120, 20);
      this.Nombre_MaxMem.TabIndex = 18;
      this.Nombre_MaxMem.ValueChanged += new EventHandler(this.Nombre_MaxMem_ValueChanged);
      this.AutoScaleDimensions = new SizeF(6f, 13f);
      this.AutoScaleMode = AutoScaleMode.Font;
      this.BackColor = SystemColors.ControlLightLight;
      this.ClientSize = new Size(421, 246);
      this.Controls.Add((Control) this.Nombre_MaxMem);
      this.Controls.Add((Control) this.Nombre_MaxVRAM);
      this.Controls.Add((Control) this.Nombre_CPUcount);
      this.Controls.Add((Control) this.Bouton_Options_Terminer);
      this.Controls.Add((Control) this.linkLabel1);
      this.Controls.Add((Control) this.label1);
      this.Controls.Add((Control) this.textBox1);
      this.Controls.Add((Control) this.CheckBox_Autre);
      this.Controls.Add((Control) this.CheckBox_Fenetre);
      this.Controls.Add((Control) this.CheckBox_noBenchMark);
      this.Controls.Add((Control) this.CheckBox_NoLogs);
      this.Controls.Add((Control) this.CheckBox_noWorld);
      this.Controls.Add((Control) this.CheckBox_NoSplash);
      this.Controls.Add((Control) this.CheckBox_NoPause);
      this.Controls.Add((Control) this.CheckBox_MAxVRAM);
      this.Controls.Add((Control) this.CheckBox_MaxMEM);
      this.Controls.Add((Control) this.CheckBox_CPUcount);
      this.Controls.Add((Control) this.CheckBox_EnableHT);
      this.Controls.Add((Control) this.CheckBox_Connection);
      this.FormBorderStyle = FormBorderStyle.FixedSingle;
      this.Icon = (Icon) componentResourceManager.GetObject("$this.Icon");
      this.MaximizeBox = false;
      this.MinimizeBox = false;
      this.Name = "Form2";
      this.ShowInTaskbar = false;
      this.Text = "Options de lancement";
      this.Load += new EventHandler(this.Form2_Load);
      this.Nombre_CPUcount.EndInit();
      this.Nombre_MaxVRAM.EndInit();
      this.Nombre_MaxMem.EndInit();
      this.ResumeLayout(false);
      this.PerformLayout();
    }
  }
}
