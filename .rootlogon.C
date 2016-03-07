{
  std::string cmssw_path = gSystem->Getenv("CMSSW_BASE");
  if ( cmssw_path != 0) {
    // Provides access to methods in CMSSW framework
    gSystem->Load("libFWCoreFWLite.so");
    int cmssw_version = cmssw_path[cmssw_path.find("CMSSW_") + 6] - '0';
    if ( cmssw_version < 7 )
      AutoLibraryLoader::enable();
    else
      FWLiteEnabler::enable();
    gSystem->Load("libDataFormatsFWLite.so");
    }
  }

  // Load dotroot
  gROOT->ProcessLineSync(".x $HOME/.root/dotrootInit.C");

  // Loads user-defined default style
  dotrootImport("nsmith-/ROOTStyles");
  gROOT->SetStyle("tdrStyle");
}
