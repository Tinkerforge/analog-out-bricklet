program ExampleSimple;

{$ifdef MSWINDOWS}{$apptype CONSOLE}{$endif}
{$ifdef FPC}{$mode OBJFPC}{$H+}{$endif}

uses
  SysUtils, IPConnection, BrickletAnalogOut;

type
  TExample = class
  private
    ipcon: TIPConnection;
    ao: TBrickletAnalogOut;
  public
    procedure Execute;
  end;

const
  HOST = 'localhost';
  PORT = 4223;
  UID = '6Q6'; { Change to your UID }

var
  e: TExample;

procedure TExample.Execute;
begin
  { Create IP connection to brickd }
  ipcon := TIPConnection.Create(HOST, PORT);

  { Create device object }
  ao := TBrickletAnalogOut.Create(UID);

  { Add device to IP connection }
  ipcon.AddDevice(ao);
  { Don't use device before it is added to a connection }

  { Set a voltage of 3.3V }
  ao.SetVoltage(3300);

  WriteLn('Press key to exit');
  ReadLn;
  ipcon.Destroy;
end;

begin
  e := TExample.Create;
  e.Execute;
  e.Destroy;
end.
