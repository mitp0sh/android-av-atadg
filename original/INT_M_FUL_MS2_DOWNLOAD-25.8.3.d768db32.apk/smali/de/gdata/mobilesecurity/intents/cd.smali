.class Lde/gdata/mobilesecurity/intents/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/TelemetryEula;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/TelemetryEula;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/cd;->a:Lde/gdata/mobilesecurity/intents/TelemetryEula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/cd;->a:Lde/gdata/mobilesecurity/intents/TelemetryEula;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v2, "yes"

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setAllowTelemetry(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/cd;->a:Lde/gdata/mobilesecurity/intents/TelemetryEula;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/cd;->a:Lde/gdata/mobilesecurity/intents/TelemetryEula;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->finish()V

    .line 59
    return-void
.end method
