.class Lde/gdata/mobilesecurity/intents/af;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;)V
    .locals 0

    .prologue
    .line 1298
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    .line 1301
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    .line 1303
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1305
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardConfiguring(Z)V

    .line 1307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1308
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1309
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/intents/Main;->startActivity(Landroid/content/Intent;)V

    .line 1311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_1

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/Main;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/services/GdAccessibilityService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/intents/Main;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->isAccessibilityEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1317
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 1319
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWaitForAccessibilityService(Z)V

    .line 1322
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1323
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    const-class v2, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1324
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1325
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/af;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/intents/Main;->startActivity(Landroid/content/Intent;)V

    .line 1328
    :cond_1
    return-void
.end method
