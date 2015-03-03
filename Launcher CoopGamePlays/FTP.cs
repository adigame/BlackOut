// Decompiled with JetBrains decompiler
// Type: Launcher_CoopGamePlay_V_0_2.FTP
// Assembly: Launcher CoopGamePlays, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2CF8ED88-150A-4A95-B659-83CB17989E47
// Assembly location: C:\Users\Mike\Desktop\Launcher CoopGamePlays\Launcher CoopGamePlays.exe

using System;
using System.IO;
using System.Net;
using System.Windows.Forms;

namespace Launcher_CoopGamePlay_V_0_2
{
  public class FTP
  {
    public string Server { get; set; }

    public string Username { get; set; }

    public string Password { get; set; }

    public void Download(string nomFichier, string repertoireFTP, string repertoireLocal, int nb_octet_fichier)
    {
      try
      {
        Uri requestUri = new Uri("ftp://" + this.Server + "/" + repertoireFTP + "/" + nomFichier);
        if (requestUri.Scheme != Uri.UriSchemeFtp)
          return;
        FtpWebRequest ftpWebRequest = (FtpWebRequest) WebRequest.Create(requestUri);
        ftpWebRequest.Credentials = (ICredentials) new NetworkCredential(this.Username, this.Password);
        ftpWebRequest.Method = "RETR";
        Console.WriteLine("téléchargement de : " + nomFichier + " depuis : " + repertoireFTP + " dans le répertoire : " + repertoireLocal + "\\" + nomFichier);
        FtpWebResponse ftpWebResponse = (FtpWebResponse) ftpWebRequest.GetResponse();
        Stream responseStream = ftpWebResponse.GetResponseStream();
        FileStream fileStream = new FileStream(repertoireLocal + "\\" + nomFichier, FileMode.Create);
        byte[] buffer = new byte[200000];
        Launcher.Barre_Chargement_Fichier.Maximum = nb_octet_fichier;
        Launcher.Barre_Chargement_Fichier.Minimum = 0;
        int num = 0;
        int count;
        do
        {
          Launcher.Barre_Chargement_Fichier.PerformStep();
          Launcher.Label_fichier_nb_octet.Text = num.ToString() + " / " + nb_octet_fichier.ToString();
          count = responseStream.Read(buffer, 0, buffer.Length);
          Launcher.Barre_Chargement_Fichier.Step = count;
          num += count;
          fileStream.Write(buffer, 0, count);
          fileStream.Flush();
        }
        while (count != 0);
        ftpWebResponse.Close();
        responseStream.Close();
        fileStream.Close();
      }
      catch (WebException ex)
      {
        int num = (int) MessageBox.Show(ex.ToString());
      }
      catch (UriFormatException ex)
      {
        int num = (int) MessageBox.Show(ex.ToString());
      }
      catch (Exception ex)
      {
        int num = (int) MessageBox.Show(ex.ToString());
      }
    }
  }
}
