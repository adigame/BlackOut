// Decompiled with JetBrains decompiler
// Type: Launcher_CoopGamePlay_V_0_2.Worker
// Assembly: Launcher CoopGamePlays, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2CF8ED88-150A-4A95-B659-83CB17989E47
// Assembly location: C:\Users\Mike\Desktop\Launcher CoopGamePlays\Launcher CoopGamePlays.exe

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;

namespace Launcher_CoopGamePlay_V_0_2
{
  public class Worker
  {
    public string FinChemin = "/@CoopGameplays";

    public List<string> getfiles(string FTPhostname, string FTPpath, string FTPusername, string FTPpassword, string extension)
    {
      FtpWebRequest ftpWebRequest = (FtpWebRequest) WebRequest.Create("ftp://" + FTPhostname + "/" + FTPpath);
      ftpWebRequest.Credentials = (ICredentials) new NetworkCredential(FTPusername, FTPpassword);
      ftpWebRequest.Method = "NLST";
      StreamReader streamReader = new StreamReader(ftpWebRequest.GetResponse().GetResponseStream());
      List<string> list = new List<string>();
      string str = streamReader.ReadLine();
      while (!string.IsNullOrEmpty(str))
      {
        if (str.Contains(extension))
        {
          str = streamReader.ReadLine();
          list.Add(str);
        }
        else
          str = streamReader.ReadLine();
      }
      streamReader.Close();
      return list;
    }

    public void Telecharger_Les_Fichiers()
    {
      Launcher.Chemin_Dossier_client = Launcher.Text_Chemin.Text;
      FTP ftp = new FTP()
      {
        Server = "launcher.altis-life-coopgameplays.fr",
        Username = "anonymous",
        Password = ""
      };
      string str1;
      if (!Directory.Exists(Launcher.Chemin_Dossier_client + this.FinChemin))
      {
        Directory.CreateDirectory(Launcher.Chemin_Dossier_client + "/@CoopGameplays");
        Directory.CreateDirectory(Launcher.Chemin_Dossier_client + "/@CoopGameplays/addons");
        ftp.Download("Version_Serveur.txt", "Launcher/@CoopGameplays", Launcher.Chemin_Dossier_client + this.FinChemin, 0);
        int length = 0;
        foreach (string str2 in System.IO.File.ReadAllLines(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Serveur.txt"))
        {
          str1 = str2;
          ++length;
        }
        string[] strArray1 = new string[length];
        string[] strArray2 = new string[length];
        int index1 = 0;
        foreach (string str2 in System.IO.File.ReadAllLines(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Serveur.txt"))
        {
          if (index1 <= length)
          {
            string[] strArray3 = str2.Split(new string[1]
            {
              "_Coop_"
            }, StringSplitOptions.None);
            strArray1[index1] = strArray3[0];
            strArray2[index1] = strArray3[1];
            ++index1;
          }
        }
        int num1 = 0;
        foreach (string s in strArray2)
        {
          int num2 = int.Parse(s);
          num1 += num2;
        }
        Launcher.Label_nb_mos.Text = "Téléchargement de " + (num1 / 1024 / 1024).ToString() + " Mo";
        Launcher.label2.Text = "Téléchargement des fichiers";
        Launcher.Barre_Chargement_Total.Maximum = index1;
        Launcher.Barre_Chargement_Total.Minimum = 0;
        Launcher.Barre_Chargement_Total.Step = 1;
        int index2 = 0;
        foreach (string nomFichier in strArray1)
        {
          int nb_octet_fichier = int.Parse(strArray2[index2]);
          ftp.Download(nomFichier, "Launcher/@CoopGameplays/addons", Launcher.Chemin_Dossier_client + this.FinChemin + "/addons", nb_octet_fichier);
          ++index2;
          Launcher.Label_Fichiers_sur_fichiers.Text = index2.ToString() + " / " + index1.ToString();
          Launcher.Barre_Chargement_Total.PerformStep();
        }
        System.IO.File.Copy(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Serveur.txt", Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Client.txt", true);
        System.IO.File.Delete(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Serveur.txt");
        Launcher.label2.Text = "Votre launcher est à jour, cliquez sur le bouton Jouer !";
      }
      else
      {
        ftp.Download("Version_Serveur.txt", "Launcher/@CoopGameplays", Launcher.Chemin_Dossier_client + this.FinChemin, 0);
        if (!System.IO.File.Exists(Launcher.Chemin_Dossier_client + this.FinChemin + "\\Version_Client.txt"))
        {
          FileInfo[] files = new DirectoryInfo(Launcher.Chemin_Dossier_client + this.FinChemin + "\\addons").GetFiles();
          using (StreamWriter streamWriter = new StreamWriter(Launcher.Chemin_Dossier_client + this.FinChemin + "\\Version_Client.txt"))
          {
            foreach (FileInfo fileInfo in files)
            {
              string str2 = fileInfo.Name + "_Coop_" + fileInfo.Length.ToString();
              streamWriter.WriteLine(str2);
              Console.WriteLine(str2);
            }
          }
        }
        if (System.IO.File.ReadAllText(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Client.txt") == System.IO.File.ReadAllText(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Serveur.txt"))
        {
          Launcher.label2.Text = "Votre launcher est à jour, cliquez sur Jouer !";
          System.IO.File.Delete(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Serveur.txt");
          Launcher.Label_fichier_nb_octet.Refresh();
          Launcher.Label_fichier_nb_octet.Text = "Da Bisoux !";
          Launcher.Bouton_Jouer.Visible = true;
        }
        else
        {
          int length1 = 0;
          foreach (string str2 in System.IO.File.ReadAllLines(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Serveur.txt"))
          {
            str1 = str2;
            ++length1;
          }
          int length2 = 0;
          foreach (string str2 in System.IO.File.ReadAllLines(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Client.txt"))
          {
            str1 = str2;
            ++length2;
          }
          string[] strArray1 = new string[length2];
          string[] strArray2 = new string[length2];
          int index1 = 0;
          foreach (string str2 in System.IO.File.ReadAllLines(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Client.txt"))
          {
            if (index1 <= length2)
            {
              string[] strArray3 = str2.Split(new string[1]
              {
                "_Coop_"
              }, StringSplitOptions.None);
              strArray1[index1] = strArray3[0];
              strArray2[index1] = strArray3[1];
              ++index1;
            }
          }
          string[] strArray4 = new string[length1];
          string[] strArray5 = new string[length1];
          int index2 = 0;
          foreach (string str2 in System.IO.File.ReadAllLines(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Serveur.txt"))
          {
            if (index2 <= length1)
            {
              string[] strArray3 = str2.Split(new string[1]
              {
                "_Coop_"
              }, StringSplitOptions.None);
              strArray4[index2] = strArray3[0];
              strArray5[index2] = strArray3[1];
              ++index2;
            }
          }
          int num1 = 0;
          int index3 = 0;
          int index4 = 0;
          string[] strArray6 = new string[1000];
          int[] numArray1 = new int[1000];
          foreach (string str2 in strArray4)
          {
            if (!Enumerable.Contains<string>((IEnumerable<string>) strArray1, str2))
            {
              strArray6[index3] = str2;
              int num2 = int.Parse(strArray5[index4]);
              numArray1[index3] = int.Parse(strArray5[index4]);
              num1 += num2;
              ++index3;
            }
            ++index4;
          }
          int index5 = 0;
          string[] strArray7 = new string[1000];
          foreach (string str2 in strArray1)
          {
            if (!Enumerable.Contains<string>((IEnumerable<string>) strArray4, str2))
            {
              strArray7[index5] = str2;
              ++index5;
            }
          }
          string[] strArray8 = new string[1000];
          int[] numArray2 = new int[1000];
          int index6 = 0;
          int index7 = 0;
          foreach (string str2 in strArray4)
          {
            int index8 = 0;
            string s = strArray5[index7];
            foreach (string str3 in strArray1)
            {
              string str4 = strArray2[index8];
              if (str3 == str2 && s != str4)
              {
                strArray8[index6] = str2;
                numArray2[index6] = int.Parse(s);
                ++index6;
                Console.WriteLine("Ajout de :" + str2 + "sa taille coté client :" + str4 + "sa taille coté serveur :" + s);
                int num2 = int.Parse(s);
                num1 += num2;
              }
              ++index8;
            }
            ++index7;
          }
          Console.WriteLine("J'arrive aux téléchargement !");
          Launcher.Label_nb_mos.Text = "Téléchargement de " + (num1 / 1024 / 1024).ToString() + " Mo";
          Launcher.label2.Text = "Téléchargement des nouveaux fichiers";
          Launcher.Barre_Chargement_Total.Maximum = index3 + index6;
          Launcher.Barre_Chargement_Total.Minimum = 0;
          Launcher.Barre_Chargement_Total.Step = 1;
          int index9 = 0;
          int num3;
          for (int index8 = 0; index8 < index3; ++index8)
          {
            num3 = numArray1[index9];
            ftp.Download(strArray6[index8], "Launcher/@CoopGameplays/addons", Launcher.Chemin_Dossier_client + this.FinChemin + "/addons", numArray1[index8]);
            ++index9;
            Launcher.Label_Fichiers_sur_fichiers.Text = index9.ToString() + " / " + (index3 + index6).ToString();
            Launcher.Barre_Chargement_Total.PerformStep();
          }
          index9 = 0;
          Launcher.label2.Text = "Téléchargement des fichiers modifiés";
          for (int index8 = 0; index8 < index6; ++index8)
          {
            num3 = numArray2[index9];
            ftp.Download(strArray8[index8], "Launcher/@CoopGameplays/addons", Launcher.Chemin_Dossier_client + this.FinChemin + "/addons", numArray2[index8]);
            if (!strArray8[index8].Contains("bisign"))
              ftp.Download(strArray8[index8] + ".CoopGameplays.bisign", "Launcher/@CoopGameplays/addons", Launcher.Chemin_Dossier_client + this.FinChemin + "/addons", 0);
            ++index9;
            Launcher.Label_Fichiers_sur_fichiers.Text = index9.ToString() + " / " + (index3 + index6).ToString();
            Launcher.Barre_Chargement_Total.PerformStep();
          }
          Launcher.Barre_Chargement_Total.Value = 0;
          Launcher.label2.Text = "Suppression des fichiers indésirables";
          for (int index8 = 0; index8 < index5; ++index8)
          {
            Console.WriteLine("Tentative de supprimer : " + strArray7[index8]);
            System.IO.File.Delete(Launcher.Chemin_Dossier_client + this.FinChemin + "/addons/" + strArray7[index8]);
            Console.WriteLine("Suppression réussie");
          }
          System.IO.File.Copy(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Serveur.txt", Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Client.txt", true);
          System.IO.File.Delete(Launcher.Chemin_Dossier_client + this.FinChemin + "/Version_Serveur.txt");
          Launcher.Label_fichier_nb_octet.Refresh();
          Launcher.Label_fichier_nb_octet.Text = "Da Bisoux !";
          Launcher.label2.Text = "Votre launcher est à jour, cliquez sur le bouton Jouer !";
        }
      }
    }
  }
}
