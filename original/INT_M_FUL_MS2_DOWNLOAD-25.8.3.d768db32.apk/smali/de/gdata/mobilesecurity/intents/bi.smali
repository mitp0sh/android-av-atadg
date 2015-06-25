.class final Lde/gdata/mobilesecurity/intents/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bi;->a:Landroid/app/Activity;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/bi;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 733
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bi;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto disconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/bi;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->doAutoDisconnect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bi;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuous: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/bi;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isContinuousMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bi;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BSSID analysis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/bi;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBssidAnalysis()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 737
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 738
    return-void
.end method
