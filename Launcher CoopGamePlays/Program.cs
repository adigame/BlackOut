// Decompiled with JetBrains decompiler
// Type: Launcher_CoopGamePlay_V_0_2.Program
// Assembly: Launcher CoopGamePlays, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2CF8ED88-150A-4A95-B659-83CB17989E47
// Assembly location: C:\Users\Mike\Desktop\Launcher CoopGamePlays\Launcher CoopGamePlays.exe

using System;
using System.Windows.Forms;

namespace Launcher_CoopGamePlay_V_0_2
{
  internal static class Program
  {
    [STAThread]
    private static void Main()
    {
      Application.EnableVisualStyles();
      Application.SetCompatibleTextRenderingDefault(false);
      Application.Run((Form) new Launcher());
    }
  }
}
