#pragma semicolon 1
#include <sourcemod>

public Plugin myinfo =
{
    name =          "block sv_cheats 1",
    author =        "nesi",
    description =   "block sv_cheats 1",
    version =       "0.0.1",
    url =           "nesi.dev"
};

public OnPluginStart()
{
    HookConVarChange(FindConVar("sv_cheats"), OnConVarChange);
}

public void OnConVarChange(ConVar convar, char[] oldValue, char[] newValue)
{
        SetConVarInt(convar, 0, true, true);
}