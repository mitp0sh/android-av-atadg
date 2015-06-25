.class Lde/gdata/mobilesecurity/activities/kidsguard/ax;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ax;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ax;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardAirplaneMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ax;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ax;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method
