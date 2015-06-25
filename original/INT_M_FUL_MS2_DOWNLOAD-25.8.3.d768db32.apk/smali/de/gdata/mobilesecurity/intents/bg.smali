.class final Lde/gdata/mobilesecurity/intents/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bg;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/bg;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lde/gdata/mobilesecurity/intents/bg;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 661
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 662
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bg;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setTrustedNetworks(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/intents/bq;

    .line 665
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/bg;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lde/gdata/mobilesecurity/intents/bg;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTrustedNetworks()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lde/gdata/mobilesecurity/intents/bq;->a:Ljava/lang/String;

    const-string v5, "^\"(.*)\"$"

    const-string v6, "$1"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/bq;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setTrustedNetworks(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bg;->c:Landroid/app/Activity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->startSpoofChecker(Landroid/content/Context;)V

    .line 671
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
