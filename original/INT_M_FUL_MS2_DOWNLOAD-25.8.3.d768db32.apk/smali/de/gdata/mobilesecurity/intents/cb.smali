.class Lde/gdata/mobilesecurity/intents/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/TelemetryEula;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/TelemetryEula;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/cb;->a:Lde/gdata/mobilesecurity/intents/TelemetryEula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/cb;->a:Lde/gdata/mobilesecurity/intents/TelemetryEula;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->finish()V

    .line 69
    return-void
.end method
