// Decompiled with JetBrains decompiler
// Type: Launcher_CoopGamePlay_V_0_2.Form3
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
  public class Form3 : Form
  {
    private IContainer components = (IContainer) null;
    private Label label1;
    private Label label2;
    private Label label3;
    private Label label4;
    private Label label5;
    private LinkLabel linkLabel1;

    public Form3()
    {
      this.InitializeComponent();
    }

    private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
    {
      Process.Start(e.Link.LinkData.ToString());
    }

    private void Form3_Load(object sender, EventArgs e)
    {
      this.linkLabel1.Links.Add(0, 15, (object) "http://www.altis-life-coopgameplays.fr/");
    }

    protected override void Dispose(bool disposing)
    {
      if (disposing && this.components != null)
        this.components.Dispose();
      base.Dispose(disposing);
    }

    private void InitializeComponent()
    {
      ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (Form3));
      this.label1 = new Label();
      this.label2 = new Label();
      this.label3 = new Label();
      this.label4 = new Label();
      this.label5 = new Label();
      this.linkLabel1 = new LinkLabel();
      this.SuspendLayout();
      this.label1.AutoSize = true;
      this.label1.Location = new Point(62, 94);
      this.label1.Name = "label1";
      this.label1.Size = new Size(229, 13);
      this.label1.TabIndex = 0;
      this.label1.Text = "Launcher by Vich, Tous droits réservés";
      this.label2.AutoSize = true;
      this.label2.Location = new Point(106, 107);
      this.label2.Name = "label2";
      this.label2.Size = new Size(133, 13);
      this.label2.TabIndex = 1;
      this.label2.Text = "Design by Ael et Omar";
      this.label3.AutoSize = true;
      this.label3.Location = new Point(14, 9);
      this.label3.Name = "label3";
      this.label3.Size = new Size(325, 13);
      this.label3.TabIndex = 2;
      this.label3.Text = "Launcher créé pour le serveur Altis Life CoopGameplays";
      this.label4.AutoSize = true;
      this.label4.Location = new Point(86, 41);
      this.label4.Name = "label4";
      this.label4.Size = new Size(90, 13);
      this.label4.TabIndex = 3;
      this.label4.Text = "Site et Forum :";
      this.label5.AutoSize = true;
      this.label5.Location = new Point(72, 63);
      this.label5.Name = "label5";
      this.label5.Size = new Size(219, 13);
      this.label5.TabIndex = 4;
      this.label5.Text = "Teamspeak : ts.altis-life-blackstorm.fr";
      this.linkLabel1.AutoSize = true;
      this.linkLabel1.Location = new Point(183, 41);
      this.linkLabel1.Name = "linkLabel1";
      this.linkLabel1.Size = new Size(97, 13);
      this.linkLabel1.TabIndex = 5;
      this.linkLabel1.TabStop = true;
      this.linkLabel1.Text = "CoopGameplays";
      this.linkLabel1.LinkClicked += new LinkLabelLinkClickedEventHandler(this.linkLabel1_LinkClicked);
      this.AutoScaleDimensions = new SizeF(7f, 13f);
      this.AutoScaleMode = AutoScaleMode.Font;
      this.BackColor = SystemColors.ControlLightLight;
      this.ClientSize = new Size(354, 125);
      this.Controls.Add((Control) this.linkLabel1);
      this.Controls.Add((Control) this.label5);
      this.Controls.Add((Control) this.label4);
      this.Controls.Add((Control) this.label3);
      this.Controls.Add((Control) this.label2);
      this.Controls.Add((Control) this.label1);
      this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
      this.FormBorderStyle = FormBorderStyle.FixedSingle;
      this.Icon = (Icon) componentResourceManager.GetObject("$this.Icon");
      this.MaximizeBox = false;
      this.MinimizeBox = false;
      this.Name = "Form3";
      this.ShowIcon = false;
      this.ShowInTaskbar = false;
      this.Text = "A propos";
      this.Load += new EventHandler(this.Form3_Load);
      this.ResumeLayout(false);
      this.PerformLayout();
    }
  }
}
