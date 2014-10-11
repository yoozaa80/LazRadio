program LazRadio;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, formmain, radiomodule, rtlsdr, formrtl, rm_rtl, async, rm_oscillator,
  radiosystem, superobject, rm_spectrum, rm_timer, rm_audio, rm_filter,
  formspectrum, kissfft, signalbasic, formoscillator, formauin, utils, rm_dump,
  logger, tachartlazaruspkg, lazcontrols, formfilter, rm_fm, rm_pll, fft2,
  genfft, fftw, gen_graph, radiomessage, minij, util_config, rm_resampling,
  mathlut, rm_audiomixer, formaudiomixer, util_math, logger_treeview, rm_am,
  rm_soundfx, rm_iqcorrection, rm_oscilloscope, formoscilloscope, radiolang,
  lzr_interpreter, formwait, radionode, formsysteminspector, rm_squelch;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TRTLForm, RTLForm);
  Application.CreateForm(TSpectrumForm, SpectrumForm);
  Application.CreateForm(TOscillatorForm, OscillatorForm);
  Application.CreateForm(TAudioInForm, AudioInForm);
  Application.CreateForm(TFilterForm, FilterForm);
  Application.CreateForm(TAudioMixerForm, AudioMixerForm);
  Application.CreateForm(TOscilloscopeForm, OscilloscopeForm);
  Application.CreateForm(TWaitForm, WaitForm);
  Application.CreateForm(TSystemInpectorForm, SystemInpectorForm);
  Application.Run;
end.

