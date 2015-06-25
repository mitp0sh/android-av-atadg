.class Lde/gdata/mobilesecurity/activities/kidsguard/aw;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 0

    .prologue
    .line 1219
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aw;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1222
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "USAGE_TIME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "USAGE_LIMIT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    const-string v0, "USAGE_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1225
    const-string v1, "USAGE_LIMIT"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1227
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aw;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->g(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1228
    if-ge v0, v1, :cond_1

    .line 1229
    sub-int v0, v1, v0

    .line 1230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 1232
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1234
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1237
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aw;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    const v2, 0x7f0d02fc

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aw;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->g(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aw;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->g(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d02fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
