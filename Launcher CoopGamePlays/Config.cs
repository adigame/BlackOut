// Decompiled with JetBrains decompiler
// Type: Launcher_CoopGamePlay_V_0_2.Config
// Assembly: Launcher CoopGamePlays, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 2CF8ED88-150A-4A95-B659-83CB17989E47
// Assembly location: C:\Users\Mike\Desktop\Launcher CoopGamePlays\Launcher CoopGamePlays.exe

using System;
using System.CodeDom.Compiler;
using System.Configuration;
using System.Diagnostics;
using System.Runtime.CompilerServices;

namespace Launcher_CoopGamePlay_V_0_2
{
  [GeneratedCode("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "12.0.0.0")]
  [CompilerGenerated]
  internal sealed class Config : ApplicationSettingsBase
  {
    private static Config defaultInstance = (Config) SettingsBase.Synchronized((SettingsBase) new Config());

    public static Config Default
    {
      get
      {
        Config config = Config.defaultInstance;
        return config;
      }
    }

    [UserScopedSetting]
    [DefaultSettingValue("Rien")]
    [DebuggerNonUserCode]
    public string Chemin_Client
    {
      get
      {
        return (string) this["Chemin_Client"];
      }
      set
      {
        this["Chemin_Client"] = (object) value;
      }
    }

    [UserScopedSetting]
    [DefaultSettingValue("False")]
    [DebuggerNonUserCode]
    public bool Connection
    {
      get
      {
        return (bool) this["Connection"];
      }
      set
      {
        this["Connection"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [DebuggerNonUserCode]
    [DefaultSettingValue("False")]
    [UserScopedSetting]
    public bool Nologs
    {
      get
      {
        return (bool) this["Nologs"];
      }
      set
      {
        this["Nologs"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [DebuggerNonUserCode]
    [DefaultSettingValue("False")]
    [UserScopedSetting]
    public bool Fenetre
    {
      get
      {
        return (bool) this["Fenetre"];
      }
      set
      {
        this["Fenetre"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [DebuggerNonUserCode]
    [UserScopedSetting]
    [DefaultSettingValue("False")]
    public bool NoPause
    {
      get
      {
        return (bool) this["NoPause"];
      }
      set
      {
        this["NoPause"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [DebuggerNonUserCode]
    [UserScopedSetting]
    [DefaultSettingValue("False")]
    public bool NoSplash
    {
      get
      {
        return (bool) this["NoSplash"];
      }
      set
      {
        this["NoSplash"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [DefaultSettingValue("False")]
    [DebuggerNonUserCode]
    [UserScopedSetting]
    public bool World
    {
      get
      {
        return (bool) this["World"];
      }
      set
      {
        this["World"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [DefaultSettingValue("False")]
    [UserScopedSetting]
    [DebuggerNonUserCode]
    public bool EnableHT
    {
      get
      {
        return (bool) this["EnableHT"];
      }
      set
      {
        this["EnableHT"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [UserScopedSetting]
    [DebuggerNonUserCode]
    [DefaultSettingValue("False")]
    public bool CPUcount_CB
    {
      get
      {
        return (bool) this["CPUcount_CB"];
      }
      set
      {
        this["CPUcount_CB"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [DefaultSettingValue("False")]
    [DebuggerNonUserCode]
    [UserScopedSetting]
    public bool MaxMEM_CB
    {
      get
      {
        return (bool) this["MaxMEM_CB"];
      }
      set
      {
        this["MaxMEM_CB"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [DefaultSettingValue("False")]
    [UserScopedSetting]
    [DebuggerNonUserCode]
    public bool MaxVRAM_CB
    {
      get
      {
        return (bool) this["MaxVRAM_CB"];
      }
      set
      {
        this["MaxVRAM_CB"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [DebuggerNonUserCode]
    [UserScopedSetting]
    [DefaultSettingValue("False")]
    public bool NoBenchMark
    {
      get
      {
        return (bool) this["NoBenchMark"];
      }
      set
      {
        this["NoBenchMark"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [DefaultSettingValue("False")]
    [UserScopedSetting]
    [DebuggerNonUserCode]
    public bool Autre_CB
    {
      get
      {
        return (bool) this["Autre_CB"];
      }
      set
      {
        this["Autre_CB"] = (object) (bool) (value ? 1 : 0);
      }
    }

    [UserScopedSetting]
    [DefaultSettingValue("0")]
    [DebuggerNonUserCode]
    public Decimal CPUcount_nombre
    {
      get
      {
        return (Decimal) this["CPUcount_nombre"];
      }
      set
      {
        this["CPUcount_nombre"] = (object) value;
      }
    }

    [DebuggerNonUserCode]
    [UserScopedSetting]
    [DefaultSettingValue("0")]
    public Decimal MaxMEM_nombre
    {
      get
      {
        return (Decimal) this["MaxMEM_nombre"];
      }
      set
      {
        this["MaxMEM_nombre"] = (object) value;
      }
    }

    [DebuggerNonUserCode]
    [DefaultSettingValue("0")]
    [UserScopedSetting]
    public Decimal MaxVRAM_nombre
    {
      get
      {
        return (Decimal) this["MaxVRAM_nombre"];
      }
      set
      {
        this["MaxVRAM_nombre"] = (object) value;
      }
    }

    [UserScopedSetting]
    [DefaultSettingValue("Rien")]
    [DebuggerNonUserCode]
    public string Autre_string
    {
      get
      {
        return (string) this["Autre_string"];
      }
      set
      {
        this["Autre_string"] = (object) value;
      }
    }
  }
}
