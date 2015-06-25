.class Lde/gdata/mobilesecurity/intents/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1567
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/o;->b:Lde/gdata/mobilesecurity/intents/Main;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1570
    new-instance v0, Lde/gdata/mobilesecurity/util/GcmUtilities;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/GcmUtilities;-><init>()V

    .line 1571
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/o;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/GcmUtilities;->reregister(Landroid/content/Context;)V

    .line 1572
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/o;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    :goto_0
    return-void

    .line 1575
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/webportal/android/WebPortalSyncService;->forceSync(Landroid/content/Context;)V

    goto :goto_0
.end method
