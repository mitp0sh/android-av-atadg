.class Lde/gdata/mobilesecurity/intents/l;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;)V
    .locals 0

    .prologue
    .line 1331
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/l;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1334
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/l;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    .line 1335
    const-string v1, "Private"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Toddler"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Teenager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/l;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/intents/Main;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 1338
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/l;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d039b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1340
    :cond_0
    return-void
.end method
