%dw 2.0
output application/json

fun formatBoolean(value: String): Boolean =
    value match {
        case "ja" -> true
        case "nein" -> false
        else -> false
    }
---
{
    "Name": payload.Name1,
    "Anrede": payload.Anrede,
    "AngelegtAm": payload.AngelegtAm,
    "GeaendertAm": payload.GeaendertAm,
    "Straße": payload["Straße"],
    "Postleitzahl": payload.Postleitzahl,
    "Ort": payload.Ort,
    "Land": payload.Land,
    "GeborenAm": payload.GeborenAm,
    "Zuzahlungsbefreiung": formatBoolean(payload.Zuzahlungsbefreiung),
    "Patientenerklaerung": formatBoolean(payload.Patientenerklaerung)
}