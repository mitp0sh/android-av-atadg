.class Lde/gdata/mobilesecurity/intents/cc;
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
    .line 60
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/cc;->a:Lde/gdata/mobilesecurity/intents/TelemetryEula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/cc;->a:Lde/gdata/mobilesecurity/intents/TelemetryEula;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v1, "no"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setAllowTelemetry(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/cc;->a:Lde/gdata/mobilesecurity/intents/TelemetryEula;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->finish()V

    .line 65
    return-void
.end method
